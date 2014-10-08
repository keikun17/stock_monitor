class RemoveCounterFromStocks < ActiveRecord::Migration
  def change
    remove_column :product_fields, :counter
  end
end
