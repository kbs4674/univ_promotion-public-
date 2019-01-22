class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.integer :visit_count

      t.timestamps
    end
  end
end
