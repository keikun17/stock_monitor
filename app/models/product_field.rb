class ProductField < ActiveRecord::Base
  TYPES = ["string", "float", "text"]
  belongs_to :product
end

# == Schema Information
#
# Table name: product_fields
#
#  id         :integer          not null, primary key
#  name       :string
#  unit       :string
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  field_type :string
#
