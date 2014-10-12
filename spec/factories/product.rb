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
      create(:product_field, name: 'X or /', field_type: 'string',  product: ar_belt)
      create(:product_field, name: 'ply', field_type: 'float', product: ar_belt)
      create(:product_field, name: 'Top Cover', field_type: 'float',  product: ar_belt)
      create(:product_field, name: 'Bottom Cover', field_type: 'float', product: ar_belt)
      create(:product_field, name: 'Resistance', field_type: 'string', product: ar_belt)
    end

    trait :with_stock do
      after :create do |product|
        stock = Stock.initialize_fields(product)
        stock.save

        stock.update_field_value("Brand", "Pinoy Brand")
        stock.update_field_value("width", 1200)
        stock.update_field_value("EP", 200)
        stock.update_field_value("X or /", 'X')
        stock.update_field_value("ply", 4)
        stock.update_field_value("Top Cover", 5)
        stock.update_field_value("Bottom Cover", 2)
        stock.update_field_value("Resistance", "Abrasive")
      end

    end
  end

end


