require "rails_helper"

feature "Stock templates management" do
  before do
    create(:stock_template, name: 'Conveyor Belt')
    create(:stock_template, name: 'Roller')
  end

  scenario "Create Stock Templates" do
    visit stock_templates_path
    click_link "New Stock template"
    fill_in "Name", with: "Side Skirt"
    click_button "Create Stock template"

    expect(page).to have_text("Stock template was successfully created.")
    expect(page).to have_text("Side Skirt")
  end

  scenario "Delete Stock Templates" do
    expect(StockTemplate.count).to eq(2)

    visit stock_templates_path
    first('.stock_template_item').find(:link, "Destroy").click
    expect(StockTemplate.count).to eq(1)
  end


end
