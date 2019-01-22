class User < ApplicationRecord
  has_many :posts
  has_many :bulletins
  has_many :all_notices
  
  # 투표 Gem 관련
  acts_as_voter
  
  #유저의 기본 권한 설정
  after_create :assign_default_role
  
  # 닉네임 중복 검사
  validates_uniqueness_of :nickname
  
  # 알림
  acts_as_reader
  has_many :new_notifications
  
  # cancancan 적용
  resourcify
  
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  
  def assign_default_role
    add_role(:normal)
  end
  
  ## 네이버 로그인 관련
  has_many :identities, dependent: :destroy
 
  def self.find_for_oauth(auth, signed_in_resource = nil)
    # user와 identity가 nil이 아니라면 받는다
    identity = Identity.find_for_oauth(auth)
    user = signed_in_resource ? signed_in_resource : identity.user
    
    # user가 nil이라면 새로 만든다.
    if user.nil?
      # 이미 있는 이메일인지 확인한다.
      email = auth.info.email
      user = User.where(:email => email).first  
      unless self.where(email: auth.info.email).exists?
        # 없다면 새로운 데이터를 생성한다.
        if user.nil?
          user = User.new(name: auth.info.name, nickname: email ? auth.info.email : "#{auth.uid}@#{auth.provider}.com", email: email ? auth.info.email : "#{auth.uid}@#{auth.provider}.com", password: Devise.friendly_token[0,20])            
          user.save!
        end
      end
    end
    
    if identity.user != user
      identity.user = user
      identity.uid = (0...8).map { (65 + rand(26)).chr }.join
      identity.save!
    end
    user
    
  end
  
  def email_required?
    false
  end
 
  def email_changed?
    false
  end
  ## 네이버 로그인 관련 종료
end
