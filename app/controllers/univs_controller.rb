class UnivsController < ApplicationController
  #before_action :authenticate_user!, except: [:index, show]
  load_and_authorize_resource
  before_action :set_univ, only: [:show, :edit, :update, :destroy]

  # GET /univs
  # GET /univs.json
  def index
    @univs = Univ.all
  end

  # GET /univs/1
  # GET /univs/1.json
  def show
    @univs_true = 0
    if @univ.KOSAF == true
      @univs_true += 1
    end
    
    if @univ.blue_ladder == true
      @univs_true += 1
    end
    
    if @univ.dbpia == true
      @univs_true += 1
    end
    
    if @univ.riss == true
      @univs_true += 1
    end
    
    if @univ.ms_office == true
      @univs_true += 1
    end
    
    if @univ.naver_music == true
      @univs_true += 1
    end
    
    if @univ.aws_credit_normal== true
      @univs_true += 1
    end
    
    if @univ.aws_credit_100 == true
      @univs_true += 1
    end
    
    if @univ.github == true
      @univs_true += 1
    end
    
    if @univ.jet_brain == true
      @univs_true += 1
    end
    
    if @univ.job_planet == true
      @univs_true += 1
    end
    
    if @univ.win10 == true
      @univs_true += 1
    end
    
    if @univ.inflearn == true
      @univs_true += 1
    end
    
    if @univ.edwith == true
      @univs_true += 1
    end
    
    if @univ.goorm_ide == true
      @univs_true += 1
    end
    
    if @univ.KFC == true
      @univs_true += 1
    end
    
    if @univ.adobe == true
      @univs_true += 1
    end
    
    if @univ.AOC == true
      @univs_true += 1
    end
    
    if @univ.Y_goon == true
      @univs_true += 1
    end
    
    if @univ.matlab == true
      @univs_true += 1
    end
    
    if @univ.autodesk == true
      @univs_true += 1
    end
    
    if @univ.samsung_dreamclass == true
      @univs_true += 1
    end
    
    if @univ.korail_youth == true
      @univs_true += 1
    end
    
    if @univ.lh == true
      @univs_true += 1
    end
    
    if @univ.etc == true
      @univs_true += 1
    end
  end

  # GET /univs/new
  def new
    @univ = Univ.new
  end

  # GET /univs/1/edit
  def edit
  end

  # POST /univs
  # POST /univs.json
  def create
    @univ = Univ.new(univ_params)

    respond_to do |format|
      if @univ.save
        format.html { redirect_to @univ, notice: '대학이 추가되었습니다.' }
        format.json { render :show, status: :created, location: @univ }
      else
        format.html { render :new }
        format.json { render json: @univ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /univs/1
  # PATCH/PUT /univs/1.json
  def update
    respond_to do |format|
      if @univ.update(univ_params)
        format.html { redirect_to @univ, notice: '대학 정보가 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @univ }
      else
        format.html { render :edit }
        format.json { render json: @univ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /univs/1
  # DELETE /univs/1.json
  def destroy
    @univ.destroy
    respond_to do |format|
      format.html { redirect_to univs_url, notice: '목록에서 대학이 삭제되었습니다.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_univ
      @univ = Univ.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def univ_params
      params.require(:univ).permit(:univ_name_kor, :univ_name_eng, :univ_nickname, :img_name, :email_url, :content, :etc_content, :KOSAF, :blue_ladder, :dbpia, :riss, :ms_office, :naver_music, :aws_credit_normal, :aws_credit_100, :github, :jet_brain, :job_planet, :win10, :inflearn, :edwith, :goorm_ide, :KFC, :adobe, :AOC, :Y_goon, :etc, :etc_content, :matlab, :samsung_dreamclass, :korail_youth, :lh)
    end
end
