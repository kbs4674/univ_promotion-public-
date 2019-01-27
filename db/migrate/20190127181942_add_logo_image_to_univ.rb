class AddLogoImageToUniv < ActiveRecord::Migration[5.1]
  def change
    add_column :univs, :logo_image, :string
  end
end
