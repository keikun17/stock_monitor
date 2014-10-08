require 'rails_helper'

RSpec.describe "withdraws/show", :type => :view do
  before(:each) do
    @withdraw = assign(:withdraw, Withdraw.create!(
      :quantity => 1.5,
      :unit => "Unit",
      :remarks => "MyText",
      :stock => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
