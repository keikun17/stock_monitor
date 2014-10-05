class Stock < ActiveRecord::Base
  belongs_to :product
  has_many :stock_fields
  has_many :product_fields, through: :product

  accepts_nested_attributes_for :stock_fields
end

# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
