class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :name
      t.integer :mobile_no

      t.timestamps
    end
  end
end
