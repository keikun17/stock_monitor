require 'rails_helper'

feature "Stock Management" do

  let!(:ar_belt) { create(:abrasive_resistant_belt) }

  scenario "Create a Stock Record" do
    initial_product_count = ar_belt.stocks.count

    visit products_path

    click_link ar_belt.name
    click_link "New Stock"

    fill_in "width", with: '900'
    fill_in "EP", with: '300'
    fill_in "X or /", with: 'X'
    fill_in "ply", with: '3'
    fill_in "Top Cover", with: '4'
    fill_in "Bottom Cover", with: '2'
    fill_in "Resistance", with: 'Abrasive'
    click_button "Create Stock"

    expect(page).to have_text("Stock was successfully created.")

    expect(page).to have_text('900')
    expect(page).to have_text('300')
    expect(page).to have_text('X')
    expect(page).to have_text('3')
    expect(page).to have_text('4')
    expect(page).to have_text('2')

    expect(ar_belt.stocks.count).to eq(initial_product_count + 1)
  end

  scenario "Edit a Stock Record" do

  end

  scenario "Viewing an Stock record existing withdrawal and deposit records"  do
    product =  create :product, name: 'Awesome Product'
    stock = create :stock, :with_90_remaining, product_id: product.id

    visit products_path
    click_link "Awesome Product"
    click_link stock.id.to_s

    expect(page).to have_text("Remaining Quantity 90.0")
    expect(page).to have_text('20.0')
    expect(page).to have_text('30.0')
    expect(page).to have_text('50.0')
    expect(page).to have_text('10.0')
  end
end
