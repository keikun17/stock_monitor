FactoryGirl.define do
  factory :product, class: Product do
    name "Awesome Product"
  end


  factory :abrasive_resistant_belt, class: Product do
    name "Abrasive Resistant Conveyor Belt"

    after :create do |ar_belt|
      create(:product_field, name: 'Brand', field_type: 'string', product: ar_belt)
      create(:product_field, name: 'width', field_type: 'float',  product: ar_belt)
      create(:product_field, name: 'EP', field_type: 'float',  product: ar_belt)
      create(:product_field, name: 'X or /', field_type: 'float',  product: ar_belt)
      create(:product_field, name: 'ply', field_type: 'float', product: ar_belt)
      create(:product_field, name: 'Top Cover', field_type: 'float',  product: ar_belt)
      create(:product_field, name: 'Bottom Cover', field_type: 'float', product: ar_belt)
      create(:product_field, name: 'Resistance', field_type: 'string', product: ar_belt)
    end

  end

end


