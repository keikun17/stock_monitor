json.array!(@stock_templates) do |stock_template|
  json.extract! stock_template, :id, :name
  json.url stock_template_url(stock_template, format: :json)
end
