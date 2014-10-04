require "rails_helper"

feature "Stock templates management" do
  before do
    create(:product, name: 'Conveyor Belt')
    create(:product, name: 'Roller')
  end

  scenario "Create Stock Templates" do
    visit products_path
    click_link "New Stock template"
    fill_in "Name", with: "Side Skirt"
    click_button "Create Stock template"

    expect(page).to have_text("Stock template was successfully created.")
    expect(page).to have_text("Side Skirt")
  end

  scenario "Delete Stock Templates" do
    expect(Product.count).to eq(2)

    visit products_path
    first('product_item').find(:link, "Destroy").click
    expect(Product.count).to eq(1)
  end


end
