class StockField < ActiveRecord::Base
  belongs_to :stock
  belongs_to :product_field
end
