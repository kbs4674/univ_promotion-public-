class CreatePromotionsPtags < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions_ptags, :id => false do |t|
      t.references :promotion, foreign_key: true
      t.references :ptag, foreign_key: true
    end
  end
end
