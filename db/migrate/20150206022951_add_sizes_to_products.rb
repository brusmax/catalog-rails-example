class AddSizesToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :sizes, :text, array:true, default: ['S','M','L', 'XL']
  end
end
