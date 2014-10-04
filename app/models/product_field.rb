class ProductField < ActiveRecord::Base
  TYPES = ["string", "float", "text"]
  belongs_to :product
end
