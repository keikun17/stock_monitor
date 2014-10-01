class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.references :stock_template, index: true

      t.timestamps null: false
    end
  end
end
