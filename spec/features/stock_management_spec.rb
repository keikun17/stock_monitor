require 'rails_helper'

feature "Stock Management" do

  before do
    create(:product, name: "Abrasive Resistant Conveyor Belt")
  end
  scenario "Create a Stock Record" do
    initial_product_count = Product.count

    visit stocks_path
    select "Abrasive Resistant Conveyor Belt", from: "product_id"

    click_button "New Stock"

    fill_in "width", with: '900'
    fill_in "EP", with: '300'
    fill_in "X or /", with: 'x'
    fill_in "ply", with: '3'
    fill_in "Top Cover", with: '3'
    fill_in "Bottom Cover", with: '3'
    click_buton "Create Stock"

    expect(page).to have_text("Stock was successfully created.")
    expect(Product.count).to eq(initial_product_count + 1)
  end
end
