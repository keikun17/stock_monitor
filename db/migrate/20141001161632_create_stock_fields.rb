class CreateStockFields < ActiveRecord::Migration
  def change
    create_table :stock_fields do |t|
      t.references :stock, index: true
      t.float :float_value
      t.string :string_value
      t.text :text_value
      t.references :template_field, index: true

      t.timestamps null: false
    end
  end
end
