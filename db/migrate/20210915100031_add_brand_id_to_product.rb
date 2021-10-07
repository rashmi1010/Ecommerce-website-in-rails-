class AddBrandIdToProduct < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :brand, null: false, foreign_key: true
  end
end
