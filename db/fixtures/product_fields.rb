######################################################################
# Abrasive Resistant Conveyor Belt
# product_id : 1
######################################################################

ProductField.seed(:id,
                  {id: 1, name: 'brand', field_type: 'string', product_id: 1},
                  {id: 2, name: 'width', field_type: 'float', unit: 'mm', product_id: 1},
                  {id: 3, name: 'carcass', field_type: 'string', product_id: 1},
                  {id: 4, name: 'strength', field_type: 'float', product_id: 1},
                  {id: 5, name: 'X or /', field_type: 'string', product_id: 1},
                  {id: 6, name: 'ply', field_type: 'float', unit: 'P', product_id: 1},
                  {id: 7, name: 'top cover', field_type: 'float', unit: 'mm', product_id: 1},
                  {id: 8, name: 'bottom cover', field_type: 'float',  unit: 'mm', product_id: 1},
                  {id: 9, name: 'cover grade', field_type: 'string', product_id: 1},

                 )

######################################################################
# Heat Resistant Conveyor Belt
# product_id : 2
######################################################################

ProductField.seed(:id,
                  {id: 10, name: 'brand', field_type: 'string', product_id: 2},
                  {id: 11, name: 'width', field_type: 'float', unit: 'mm', product_id: 2},
                  {id: 12, name: 'carcass', field_type: 'string', product_id: 2},
                  {id: 13, name: 'strength', field_type: 'float', product_id: 2},
                  {id: 14, name: 'X or /', field_type: 'string', product_id: 2},
                  {id: 15, name: 'ply', field_type: 'float', unit: 'P', product_id: 2},
                  {id: 16, name: 'top cover', field_type: 'float', unit: 'mm', product_id: 2},
                  {id: 17, name: 'bottom cover', field_type: 'float',  unit: 'mm', product_id: 2},
                  {id: 18, name: 'cover grade', field_type: 'string', product_id: 2},
                 )
