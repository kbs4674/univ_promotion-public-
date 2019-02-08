class Univ < ApplicationRecord
    mount_uploader :banner_image, UnivBannerUploader
    mount_uploader :logo_image, UnivLogoUploader
    
    is_impressionable :counter_cache => true
    
    # 이미지를 가진 게시글 삭제 시 AWS S3서버에도 자동 삭제처리
    before_destroy :destroy_assets
 
    def destroy_assets
        self.banner_image.remove! if self.banner_image
        self.logo_image.remove! if self.logo_image
        self.save!
    end
    
    # cancancan 적용
    resourcify
    
    acts_as_commentable
    
    # 이름 중복 검사
    validates_uniqueness_of :univ_name_kor
end
