require 'rails_helper'

feature "Stock Quantity" do

  let(:ar_belt) { create(:product, name: "Abrasive Resistant Conveyor Belt") }


  scenario "Adding Deposits increases the stock quantity" do

  end

  scenario "Withdrawing decreases the stock quantity" do
    visit products_path
    click_link "Abrasive Resistant Conveyor Belt"

    click_link "Deposit Stock"
    fill_up "quantity", with: 555
    click_button "Submit"

    expect(page).to have_text("555")
  end

  scenario "A stock that has not arrived will not decrease the quantity" do
    visit products_path
    click_link "Abrasive Resistant Conveyor Belt"

    click_link "Deposit Stock"
    fill_up "quantity", with: 555
    select Time.now.year + 1, from: "#arrival_date_1i"
    click_button "Submit"

    expect(page).to_not have_text("555")
  end

end
