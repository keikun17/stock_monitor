json.array!(@withdraws) do |withdraw|
  json.extract! withdraw, :id, :quantity, :unit, :date_ordered, :arrival_date, :remarks, :stock_id
  json.url withdraw_url(withdraw, format: :json)
end
