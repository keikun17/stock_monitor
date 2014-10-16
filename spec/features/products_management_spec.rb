require "rails_helper"

feature "Products management" do

  scenario "Create Product" do
    visit products_path
    click_link "New Product"
    fill_in "Name", with: "Side Skirt"
    click_button "Create Product"

    expect(page).to have_text("Product was successfully created.")
    expect(page).to have_text("Side Skirt")
  end

  scenario "Update Product" do
    create(:product, name: "Rub Skirt")
    visit products_path
    click_link "Edit"
    fill_in "Name", with: "Rubber Skirt"
    click_button "Update Product"

    expect(page).to have_text("Product was successfully updated.")
    expect(page).to have_text("Rubber Skirt")
  end

  scenario "Delete Product" do
    create(:product, name: 'Conveyor Belt')
    create(:product, name: 'Roller')

    expect(Product.count).to eq(2)

    visit products_path
    page.first('.product_item').find(:link, "Destroy").click
    expect(Product.count).to eq(1)
  end


end
