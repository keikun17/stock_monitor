json.array!(@deposits) do |deposit|
  json.extract! deposit, :id, :quantity, :unit, :date_ordered, :arrival_date, :remarks, :stock_id
  json.url deposit_url(deposit, format: :json)
end
