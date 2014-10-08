require 'rails_helper'

RSpec.describe "deposits/edit", :type => :view do
  before(:each) do
    @deposit = assign(:deposit, Deposit.create!(
      :quantity => 1.5,
      :unit => "MyString",
      :remarks => "MyText",
      :stock => nil
    ))
  end

  it "renders the edit deposit form" do
    render

    assert_select "form[action=?][method=?]", deposit_path(@deposit), "post" do

      assert_select "input#deposit_quantity[name=?]", "deposit[quantity]"

      assert_select "input#deposit_unit[name=?]", "deposit[unit]"

      assert_select "textarea#deposit_remarks[name=?]", "deposit[remarks]"

      assert_select "input#deposit_stock_id[name=?]", "deposit[stock_id]"
    end
  end
end
