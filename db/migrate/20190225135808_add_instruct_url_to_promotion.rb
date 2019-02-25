class AddInstructUrlToPromotion < ActiveRecord::Migration[5.1]
  def change
    add_column :promotions, :instruct_url, :string
  end
end
