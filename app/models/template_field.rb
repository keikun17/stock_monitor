class TemplateField < ActiveRecord::Base
  TYPES = ["string", "float", "text"]
  belongs_to :stock_template
end
