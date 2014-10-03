class Stock < ActiveRecord::Base
  belongs_to :stock_template
  has_many :stock_fields
  has_many :template_fields, through: :stock_template
end
