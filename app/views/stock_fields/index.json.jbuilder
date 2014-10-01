json.array!(@stock_fields) do |stock_field|
  json.extract! stock_field, :id, :stock_id, :float_value, :string_value, :text_value, :template_field_id
  json.url stock_field_url(stock_field, format: :json)
end
