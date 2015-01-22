class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :size
      t.float :price
      t.boolean :status
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :products, :categories
  end
end
