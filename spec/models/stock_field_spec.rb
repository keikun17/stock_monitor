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
end
