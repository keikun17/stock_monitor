class AddFieldTypeToTemplateFields < ActiveRecord::Migration
  def change
    add_column :template_fields, :field_type, :string
  end
end
