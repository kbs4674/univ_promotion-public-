class AddBannerImageToUniv < ActiveRecord::Migration[5.1]
  def change
    add_column :univs, :banner_image, :string
  end
end
