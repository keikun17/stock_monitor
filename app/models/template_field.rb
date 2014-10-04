class TemplateField < ActiveRecord::Base
  TYPES = ["string", "float", "text"]
  belongs_to :product
end
