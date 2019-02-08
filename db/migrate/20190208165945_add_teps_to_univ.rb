class AddTepsToUniv < ActiveRecord::Migration[5.1]
  def change
    add_column :univs, :teps, :boolean, default: false
  end
end
