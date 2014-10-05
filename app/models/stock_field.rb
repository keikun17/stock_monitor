class StockField < ActiveRecord::Base
  belongs_to :stock
  belongs_to :product_field
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
