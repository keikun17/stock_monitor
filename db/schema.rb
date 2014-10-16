# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141016063756) do

  create_table "deposits", force: true do |t|
    t.float    "quantity"
    t.datetime "date_ordered"
    t.datetime "arrival_date"
    t.text     "remarks"
    t.integer  "stock_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "deposits", ["stock_id"], name: "index_deposits_on_stock_id"

  create_table "product_fields", force: true do |t|
    t.string   "name"
    t.string   "unit"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "field_type"
  end

  add_index "product_fields", ["product_id"], name: "index_product_fields_on_product_id"

  create_table "products", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock_fields", force: true do |t|
    t.integer  "stock_id"
    t.float    "float_value"
    t.string   "string_value"
    t.text     "text_value"
    t.integer  "product_field_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "stock_fields", ["product_field_id"], name: "index_stock_fields_on_product_field_id"
  add_index "stock_fields", ["stock_id"], name: "index_stock_fields_on_stock_id"

  create_table "stocks", force: true do |t|
    t.integer  "product_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "quantity_unit"
  end

  add_index "stocks", ["product_id"], name: "index_stocks_on_product_id"

  create_table "withdraws", force: true do |t|
    t.float    "quantity"
    t.datetime "date_ordered"
    t.datetime "arrival_date"
    t.text     "remarks"
    t.integer  "stock_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "withdraws", ["stock_id"], name: "index_withdraws_on_stock_id"

end
