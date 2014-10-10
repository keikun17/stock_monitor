require 'rails_helper'

describe Stock do

  describe "#initialize_fields" do
    let(:ar_belt) { create(:abrasive_resistant_belt) }
    subject { described_class.initialize_fields(ar_belt) }

    it "builds the stock_fields" do
      expect(subject.product_fields).to_not be_empty
    end

  end

end
