class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
      t.string :title
      t.string :thumb
      t.string :url
      t.text :content
      t.string :univ_hashtag

      t.timestamps
    end
  end
end
