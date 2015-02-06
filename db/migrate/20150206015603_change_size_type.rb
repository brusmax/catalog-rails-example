class ChangeSizeType < ActiveRecord::Migration
  def up
  	remove_column :products, :size_id
  	remove_column :products, :sizes
  	remove_foreign_key "products", "sizes"
  end

  def change
  	remove_column :products, :size_id
  end
  def down
  	add_column :products, :sizes, :text, array:true, default: ['S','M','L', 'XL']
  end
end
