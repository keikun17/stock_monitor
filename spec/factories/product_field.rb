FactoryGirl.define do
  factory :product_field, class: ProductField do
    name         "size"
    unit         "meter"
    field_type   'float'
    counter      false
  end
end
