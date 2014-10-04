class Product < ActiveRecord::Base
  has_many :stocks
  has_many :template_fields
end
