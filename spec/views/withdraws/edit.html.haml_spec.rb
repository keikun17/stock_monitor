require 'rails_helper'

RSpec.describe "withdraws/edit", :type => :view do
  before(:each) do
    @withdraw = assign(:withdraw, Withdraw.create!(
      :quantity => 1.5,
      :unit => "MyString",
      :remarks => "MyText",
      :stock => nil
    ))
  end

  it "renders the edit withdraw form" do
    render

    assert_select "form[action=?][method=?]", withdraw_path(@withdraw), "post" do

      assert_select "input#withdraw_quantity[name=?]", "withdraw[quantity]"

      assert_select "input#withdraw_unit[name=?]", "withdraw[unit]"

      assert_select "textarea#withdraw_remarks[name=?]", "withdraw[remarks]"

      assert_select "input#withdraw_stock_id[name=?]", "withdraw[stock_id]"
    end
  end
end
