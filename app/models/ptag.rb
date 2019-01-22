class Ptag < ApplicationRecord
    # 해시태그 DB 모델관계 설정
    has_and_belongs_to_many :promotions
end
