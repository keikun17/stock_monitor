######################################################################
# Abrasive Resistant Conveyor Belts
######################################################################


# Seed 1
Stock.seed do |s|
  s.id = 1
  s.product_id = 1
end

StockField.seed(:id,
                  {id: 1,stock_id: 1, product_field_id: 1, string_value: 'PinoyBelt'},
                  {id: 2,stock_id: 1, product_field_id: 2, float_value: 800},
                  {id: 3,stock_id: 1, product_field_id: 3, string_value: 'EP'},
                  {id: 4,stock_id: 1, product_field_id: 4, float_value: 150},
                  {id: 5,stock_id: 1, product_field_id: 5, string_value: 'X'},
                  {id: 6,stock_id: 1, product_field_id: 6, float_value: 3},
                  {id: 7,stock_id: 1, product_field_id: 7, float_value: 5},
                  {id: 8,stock_id: 1, product_field_id: 8, float_value: 2},
                  {id: 9,stock_id: 1, product_field_id: 9, string_value: 'Grade-M'}
                 )

# Seed 2
Stock.seed do |s|
  s.id = 2
  s.product_id = 1
end

StockField.seed(:id,
                  {id: 10, stock_id: 2, product_field_id: 1, string_value: 'Bonda'},
                  {id: 11, stock_id: 2, product_field_id: 2, float_value: 1400},
                  {id: 12, stock_id: 2, product_field_id: 3, string_value: 'EP'},
                  {id: 13, stock_id: 2, product_field_id: 4, float_value: 120},
                  {id: 14, stock_id: 2, product_field_id: 5, string_value: 'X'},
                  {id: 15, stock_id: 2, product_field_id: 6, float_value: 4},
                  {id: 16, stock_id: 2, product_field_id: 7, float_value: 6},
                  {id: 17, stock_id: 2, product_field_id: 8, float_value: 4},
                  {id: 18, stock_id: 2, product_field_id: 9, string_value: 'Grade-M'}
                 )

######################################################################
# Heat Resistant Conveyor Belts
######################################################################

# Seed 3
Stock.seed do |s|
  s.id = 3
  s.product_id = 2
end

