require "rails_helper"

feature "Produce Fields Management" do

  before do
    create(:product, name: 'Apples')
    create(:product, name: 'Conveyor Belt')
  end

  scenario "Create a Product Field" do
    expect(ProductField.count).to be(0)
    visit product_fields_path
    click_link "New Product field"

    select "Conveyor Belt", from: 'Product'
    fill_in "Name", with: "Width"
    fill_in "Unit", with: "mm"
    select "float", from: "Field type"

    click_button "Create Product field"

    expect(ProductField.count).to be(1)
  end

  scenario "Delete a Product Field" do
    create(:product_field)
    create(:product_field)
    expect(ProductField.count).to eq(2)

    visit product_fields_path
    page.first('.product_field_item').find(:link, "Destroy").click
    expect(ProductField.count).to eq(1)
  end
end

