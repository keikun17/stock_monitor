require 'rails_helper'

feature "Stock Management" do

  let(:ar_belt) { create(:product, name: "Abrasive Resistant Conveyor Belt") }
  before do
    create(:product_field, name: 'width', field_type: 'float',  product: ar_belt)
    create(:product_field, name: 'EP', field_type: 'float',  product: ar_belt)
    create(:product_field, name: 'X or /', field_type: 'float',  product: ar_belt)
    create(:product_field, name: 'ply', field_type: 'float', product: ar_belt)
    create(:product_field, name: 'Top Cover', field_type: 'float',  product: ar_belt)
    create(:product_field, name: 'Bottom Cover', field_type: 'float', product: ar_belt)
    create(:product_field, name: 'Resistance', field_type: 'string', product: ar_belt)
  end

  scenario "Create a Stock Record" do
    initial_product_count = ar_belt.stocks.count

    visit products_path
    click_link "Abrasive Resistant Conveyor Belt"

    click_link "New Stock"

    fill_in "width", with: '900'
    fill_in "EP", with: '300'
    fill_in "X or /", with: 'x'
    fill_in "ply", with: '3'
    fill_in "Top Cover", with: '4'
    fill_in "Bottom Cover", with: '2'
    fill_in "Resistance", with: 'Abrasive'
    click_button "Create Stock"

    expect(page).to have_text("Stock was successfully created.")

    expect(page).to have_text('900')
    expect(page).to have_text('300')
    expect(page).to have_text('x')
    expect(page).to have_text('3')
    expect(page).to have_text('4')
    expect(page).to have_text('2')

    expect(ar_belt.stocks.count).to eq(initial_product_count + 1)
  end
end
