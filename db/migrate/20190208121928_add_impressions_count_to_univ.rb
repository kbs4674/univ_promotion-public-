class AddImpressionsCountToUniv < ActiveRecord::Migration[5.1]
  def change
    add_column :univs, :impressions_count, :int
  end
end
