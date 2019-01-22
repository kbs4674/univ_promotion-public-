class PromotionsController < ApplicationController
  #before_action :authenticate_user!, except: [:index, show]
  load_and_authorize_resource
  before_action :set_promotion, only: [:show, :edit, :update, :destroy]

  # [Acts_as_Votable] 투표 관련 Controller 내용 : 찬성
  def upvote
    @promotion = Promotion.find(params[:promotion_id])
    
    # 만약 '찬성' 투표를 이미 한 경우 : '찬성' 투표 취소
    if ((current_user.voted_up_on? @promotion) == true)
      @promotion.unliked_by current_user
      #redirect_to(request.referrer, :notice => '해당 글의 추천을 취소하셨습니다.')
      respond_to do |format|
        format.js { flash[:notice] = "해당 혜택의 추천을 취소하셨습니다." }
      end
    else
      @promotion.upvote_by current_user
      #redirect_to(request.referrer, :notice => '해당 글을 추천하셨습니다.')
      respond_to do |format|
        format.js { flash[:notice] = "해당 혜택을 추천하셨습니다." }
      end
    end
  end
  
  # [Acts_as_Votable] 투표 관련 Controller 내용 : 반대
  def downvote
    @promotion = Promotion.find(params[:promotion_id])
    
    # 만약 '반대' 투표를 이미 한 경우 : '반대' 투표 취소
    if ((current_user.voted_down_on? @promotion) == true)
      @promotion.unliked_by current_user
      #redirect_to(request.referrer, :notice => '해당 글의 반대를 취소하셨습니다.')
      respond_to do |format|
        format.js { flash[:notice] = "해당 혜택의 반대를 취소하셨습니다." }
      end
    else
      @promotion.downvote_from current_user
      #redirect_to(request.referrer, :notice => '해당 글을 반대하셨습니다.')
      respond_to do |format|
        format.js { flash[:notice] = "해당 혜택을 반대하셨습니다." }
      end
    end
  end

  def hashtags
    tag = Ptag.find_by(name: params[:name])
    @promotions = tag.promotions
  end

  # GET /promotions
  # GET /promotions.json
  def index
    @promotions = Promotion.all
  end

  # GET /promotions/1
  # GET /promotions/1.json
  def show
  end

  # GET /promotions/new
  def new
    @promotion = Promotion.new
  end

  # GET /promotions/1/edit
  def edit
  end

  # POST /promotions
  # POST /promotions.json
  def create
    @promotion = Promotion.new(promotion_params)

    respond_to do |format|
      if @promotion.save
        format.html { redirect_to @promotion, notice: '새 혜택이 추가되었습니다.' }
        format.json { render :show, status: :created, location: @promotion }
      else
        format.html { render :new }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotions/1
  # PATCH/PUT /promotions/1.json
  def update
    respond_to do |format|
      if @promotion.update(promotion_params)
        format.html { redirect_to @promotion, notice: '혜택이 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @promotion }
      else
        format.html { render :edit }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotions/1
  # DELETE /promotions/1.json
  def destroy
    @promotion.destroy
    respond_to do |format|
      format.html { redirect_to promotions_url, notice: '혜택이 제거되었습니다.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion
      @promotion = Promotion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promotion_params
      params.require(:promotion).permit(:title, :thumb, :url, :content, :univ_hashtag)
    end
end
