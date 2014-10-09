FactoryGirl.define do
  factory :product, class: Product do
    name "Awesome Product"
  end


  factory :abrasive_resistant_belt, class: Product do
    name "Abrasive Resistant Conveyor Belt"

    after :create do |product_field|
    end

  end

end


