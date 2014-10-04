json.array!(@product_fields) do |product_field|
  json.extract! product_field, :id, :name, :unit, :counter, :product_id
  json.url product_field_url(product_field, format: :json)
end
