class AddColumnToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :price, :integer
    add_column :products, :quantity, :integer
  end
end
