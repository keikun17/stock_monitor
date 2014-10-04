class Stock < ActiveRecord::Base
  belongs_to :product
  has_many :stock_fields
  has_many :template_fields, through: :product
end
