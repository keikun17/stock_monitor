json.array!(@template_fields) do |template_field|
  json.extract! template_field, :id, :name, :unit, :counter, :product_id
  json.url template_field_url(template_field, format: :json)
end
