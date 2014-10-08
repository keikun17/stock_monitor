require 'rails_helper'

RSpec.describe "deposits/index", :type => :view do
  before(:each) do
    assign(:deposits, [
      Deposit.create!(
        :quantity => 1.5,
        :unit => "Unit",
        :remarks => "MyText",
        :stock => nil
      ),
      Deposit.create!(
        :quantity => 1.5,
        :unit => "Unit",
        :remarks => "MyText",
        :stock => nil
      )
    ])
  end

  it "renders a list of deposits" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
