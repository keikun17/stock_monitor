require 'rails_helper'

feature "Stock Quantity" do

  let!(:ar_belt) { create(:abrasive_resistant_belt, :with_stock) }
  let(:stock) { ar_belt.stocks.first }

  scenario "Adding Deposits increases the stock quantity" do
    visit products_path
    click_link "Abrasive Resistant Conveyor Belt"
    click_link stock.id.to_s
    click_link "Deposit Stock"

    fill_in "Quantity", with: 555

    expect(page.find('#deposit_stock_id').value).to eq(stock.id.to_s)
    select Time.now.year, from: "deposit_date_ordered_1i"
    select Time.now.strftime("%B"), from: "deposit_date_ordered_2i"
    select Time.now.day, from: "deposit_date_ordered_3i"
    click_button "Create Deposit"

    expect(page).to have_text("Deposit was successfully created.")
    expect(stock.remaining_quantity).to eq(555.0)
    expect(page).to have_text("555.0")
  end

  scenario "Withdrawing decreases the stock quantity"

  scenario "A stock that has not arrived will not decrease the quantity"

end
