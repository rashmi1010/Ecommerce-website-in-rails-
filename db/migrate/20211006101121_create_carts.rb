class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.belongs_to :user
      t.belongs_to :product
      t.timestamps
    end
  end
end
