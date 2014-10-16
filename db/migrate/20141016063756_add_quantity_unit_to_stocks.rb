class AddQuantityUnitToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :quantity_unit, :string
  end
end
