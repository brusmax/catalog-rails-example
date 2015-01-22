class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :size
      t.integer :count
      t.float :price

      t.timestamps null: false
    end
  end
end
