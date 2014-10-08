require 'rails_helper'

RSpec.describe "withdraws/index", :type => :view do
  before(:each) do
    assign(:withdraws, [
      Withdraw.create!(
        :quantity => 1.5,
        :unit => "Unit",
        :remarks => "MyText",
        :stock => nil
      ),
      Withdraw.create!(
        :quantity => 1.5,
        :unit => "Unit",
        :remarks => "MyText",
        :stock => nil
      )
    ])
  end

  it "renders a list of withdraws" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
