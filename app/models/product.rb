class Product < ActiveRecord::Base
  has_many :stocks
  has_many :product_fields
end
