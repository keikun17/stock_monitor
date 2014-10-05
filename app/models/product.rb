class Product < ActiveRecord::Base
  has_many :stocks
  has_many :product_fields
end

# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
