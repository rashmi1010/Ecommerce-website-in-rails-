class AddColumnToBrand < ActiveRecord::Migration[6.0]
  def change
    add_reference :brands, :category
  end
end
