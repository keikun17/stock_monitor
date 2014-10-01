json.array!(@template_fields) do |template_field|
  json.extract! template_field, :id, :name, :unit, :counter, :stock_template_id
  json.url template_field_url(template_field, format: :json)
end
