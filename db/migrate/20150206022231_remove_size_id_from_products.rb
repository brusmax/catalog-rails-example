class RemoveSizeIdFromProducts < ActiveRecord::Migration
  def change
  	remove_foreign_key :products, :size
  	remove_column :products, :size_id
  end
end
