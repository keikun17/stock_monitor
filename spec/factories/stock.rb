FactoryGirl.define do
  factory :withdraw
  factory :deposit

  factory :stock do

    trait :with_90_remaining do
      after :create do |stock|
        create(:deposit, quantity: 20, stock: stock)
        create(:deposit, quantity: 30, stock: stock)
        create(:deposit, quantity: 50, stock: stock)
        create(:withdraw, quantity: 10, stock: stock)
      end
    end
  end

end
