class Stock < ActiveRecord::Base
  belongs_to :product
  has_many :stock_fields
  has_many :product_fields, through: :product

  has_many :deposits
  has_many :withdraws

  accepts_nested_attributes_for :stock_fields

  def total_withdrawn
    withdraws.sum(:quantity)
  end

  def total_deposit
    deposits.sum(:quantity)
  end

  def remaining_quantity
    total_deposit - total_withdrawn
  end

  def self.initialize_fields(product)
    stock = new(product: product)
    product.product_fields.each do |product_field|
      stock.stock_fields.build(product_field: product_field)
    end

    stock
  end

  def get_field_value(field_name)
    find_field_by_name(field_name).value
  end

  def update_field_value(field_name, new_value)
    stock_field = find_field_by_name(field_name)
    stock_field.update_value(new_value)
  end


  private

  # This searches through the collection using 'select' so it would not trigger
  # AR's and search through the product's product_fields
  def find_field_by_name(field_name)
    product_field_id = self.product_fields.find_by(name: field_name).id
    stock_field = self.stock_fields.select do |stock_field|
      stock_field.product_field_id == product_field_id
    end.first
  end

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
