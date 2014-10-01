class CreateTemplateFields < ActiveRecord::Migration
  def change
    create_table :template_fields do |t|
      t.string :name
      t.string :unit
      t.boolean :counter
      t.references :stock_template, index: true

      t.timestamps null: false
    end
  end
end
