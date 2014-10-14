require 'rails_helper'

describe Stock do

  describe ".initialize_fields" do
    let(:ar_belt) { create(:abrasive_resistant_belt) }
    subject { described_class.initialize_fields(ar_belt) }

    it "builds the stock_fields" do
      expect(subject.stock_fields).to_not be_empty
    end

    it "saves with the built stock_fields" do
      expect(subject).to_not be_persisted
      subject.save

      expect(subject).to be_persisted
      expect(subject.stock_fields).to_not be_empty
    end
  end

  describe "#total_withdrawn" do
    subject(:stock) { create(:stock) }

    before do
      create(:withdraw, quantity: 100, stock: stock)
      create(:withdraw, quantity: 20, stock: stock)
      create(:withdraw, quantity: 50, stock: stock)
    end

    it "sums the total withdrawn quantities" do
      expect(stock.total_withdrawn).to eq(170)
    end
  end

  describe "#quantity" do
    subject(:stock) { create(:stock) }
    let(:deposit) { create(:deposit, quantity: 500, stock: stock)}

    it "returns the difference of deposit and withdraw quantities"
  end

  describe "#get_field_value" do
    let(:ar_belt) { create(:abrasive_resistant_belt) }
    subject(:stock) { described_class.initialize_fields(ar_belt) }

    before do
      product_brand_field_id = ar_belt.product_fields.where(name: "Brand").first.id

      stock_brand_field = stock.stock_fields.select do |stock_field|
        stock_field.product_field_id == product_brand_field_id
      end

      stock_brand_field.first.update_attribute(:string_value, "Awesome Brand")
    end

    context "When the stock has not been saved yet" do
      before { expect(stock).to_not be_persisted }
      it "retrieves the value of the stock field" do
        expect(stock.get_field_value("Brand")).to eq("Awesome Brand")
      end
    end

    context "When the stock has already been saved yet" do
      before { stock.save ; expect(stock).to be_persisted }
      it "retrieves the value of the stock field" do
        expect(stock.get_field_value("Brand")).to eq("Awesome Brand")
      end
    end

  end

  describe "#update_field_value" do
    let(:ar_belt) { create(:abrasive_resistant_belt) }
    subject(:stock) { described_class.initialize_fields(ar_belt) }

    context "When the stock has not been saved yet" do
      before { expect(stock).to_not be_persisted }
      it "retrieves the value of the stock field" do
        stock.update_field_value("Brand", "Brand X")
        expect(stock.get_field_value("Brand")).to eq("Brand X")
      end
    end

    context "When the stock has already been saved yet" do
      before { stock.save ; expect(stock).to be_persisted }
      it "retrieves the value of the stock field" do
        stock.update_field_value("Brand", "Brand X")
        expect(stock.get_field_value("Brand")).to eq("Brand X")
      end
    end

  end

end

# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
