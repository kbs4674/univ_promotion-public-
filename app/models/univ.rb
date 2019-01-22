class Univ < ApplicationRecord
    # cancancan 적용
    resourcify
    
    acts_as_commentable
    
    # 이름 중복 검사
    validates_uniqueness_of :univ_name_kor
end
