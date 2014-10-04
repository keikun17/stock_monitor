class AddFieldTypeToProductFields < ActiveRecord::Migration
  def change
    add_column :product_fields, :field_type, :string
  end
end
