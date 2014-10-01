class CreateStockTemplates < ActiveRecord::Migration
  def change
    create_table :stock_templates do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
