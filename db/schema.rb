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

ActiveRecord::Schema.define(version: 20141001161632) do

  create_table "stock_fields", force: true do |t|
    t.integer  "stock_id"
    t.float    "float_value"
    t.string   "string_value"
    t.text     "text_value"
    t.integer  "template_field_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "stock_fields", ["stock_id"], name: "index_stock_fields_on_stock_id"
  add_index "stock_fields", ["template_field_id"], name: "index_stock_fields_on_template_field_id"

  create_table "stock_templates", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: true do |t|
    t.integer  "stock_template_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "stocks", ["stock_template_id"], name: "index_stocks_on_stock_template_id"

  create_table "template_fields", force: true do |t|
    t.string   "name"
    t.string   "unit"
    t.boolean  "counter"
    t.integer  "stock_template_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "template_fields", ["stock_template_id"], name: "index_template_fields_on_stock_template_id"

end