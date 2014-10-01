class StockField < ActiveRecord::Base
  belongs_to :stock
  belongs_to :template_field
end
