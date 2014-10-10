require 'rails_helper'

describe StockField do
  describe "#value" do
    let(:product_field) { ProductField.new(field_type: field_type) }
    subject do
      described_class.new(product_field: product_field,
                          text_value: 'text',
                          float_value: 4.2,
                          string_value: 'string'
                         ).value
    end

    context "field type is 'string'" do
      let(:field_type) { 'string' }
      it { is_expected.to eq('string') }
    end

    context "field type is 'text'" do
      let(:field_type) { 'text' }
      it { is_expected.to eq('text') }
    end

    context "field type is 'float'" do
      let(:field_type) { 'float' }
      it { is_expected.to eq(4.2) }
    end
  end

  describe "#update_value" do
    let(:product_field) {ProductField.create(field_type: 'string')}
    subject (:stock_field) do
      described_class.new(string_value: 'original string',
                          product_field: product_field)
    end

    context "not persisted" do
      before {expect(stock_field).to_not be_persisted}
      it "sets the dirty value" do
        stock_field.update_value('edited string')
        expect(stock_field.value).to eq('edited string')
        expect(stock_field).to_not be_persisted
      end
    end

    context "persisted" do
      before {stock_field.save}
      it "updates the stock_field's value" do
        stock_field.update_value('edited string')
        expect(stock_field.value).to eq('edited string')
        expect(stock_field).to be_persisted
        expect(stock_field).to_not be_changed
      end
    end

  end

end

# == Schema Information
#
# Table name: stock_fields
#
#  id               :integer          not null, primary key
#  stock_id         :integer
#  float_value      :float
#  string_value     :string
#  text_value       :text
#  product_field_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
