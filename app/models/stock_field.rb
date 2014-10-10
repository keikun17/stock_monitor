class StockField < ActiveRecord::Base
  belongs_to :stock
  belongs_to :product_field

  def value
    case product_field.field_type
    when 'float'
      float_value
    when 'string'
      string_value
    when 'text'
      text_value
    end
  end
end

# == Schema Information
#
# Table name: stock_fields
#
#  id               :integer          not null, primary key
#  stock_id         :integer
#  float_value      :float
#  string_value     :string
#  text_value       :text
#  product_field_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
