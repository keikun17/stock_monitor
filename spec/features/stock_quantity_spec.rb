require 'rails_helper'

feature "Stock Quantity" do

  let!(:ar_belt) { create(:abrasive_resistant_belt, :with_stock) }
  let(:stock) { ar_belt.stocks.first }

  scenario "Adding Deposits increases the stock quantity" do
    visit products_path
    click_link "Abrasive Resistant Conveyor Belt"
    click_link stock.id.to_s
    click_link "Deposit Stock"

    expect(page.find('#deposit_stock_id')).to eq(stock.id)
    fill_in "Quantity", with: 555
    select Time.now.year + 1, from: "#arrival_date_1i"
    click_button "Submit"

    expect(page).to_not have_text("555")
  end

  scenario "Withdrawing decreases the stock quantity"

  scenario "A stock that has not arrived will not decrease the quantity"

end
