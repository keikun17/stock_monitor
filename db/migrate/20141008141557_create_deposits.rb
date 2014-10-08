class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.float :quantity
      t.string :unit
      t.datetime :date_ordered
      t.datetime :arrival_date
      t.text :remarks
      t.references :stock, index: true

      t.timestamps null: false
    end
  end
end
