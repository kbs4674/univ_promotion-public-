class AddSoftwareToUniv < ActiveRecord::Migration[5.1]
  def change
    add_column :univs, :software, :boolean
  end
end
