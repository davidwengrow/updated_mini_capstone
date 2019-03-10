class AddStockToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :instock, :string
  end
end
