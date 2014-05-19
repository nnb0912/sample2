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

ActiveRecord::Schema.define(version: 20140517095044) do

  create_table "fba_receipt_reports", force: true do |t|
    t.integer  "user_id"
    t.date     "receipt_date"
    t.string   "fnsku"
    t.string   "seller_sku"
    t.string   "sku_name"
    t.integer  "qty"
    t.string   "fba_shipment_id"
    t.string   "fulfillment_center_id"
    t.integer  "createflg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_reports", force: true do |t|
    t.integer  "user_id"
    t.string   "sku_name"
    t.string   "sellerid"
    t.string   "seller_sku"
    t.decimal  "price",               precision: 10, scale: 0
    t.integer  "qty"
    t.date     "ship_date"
    t.integer  "product_id_type"
    t.text     "comment"
    t.integer  "item_condition"
    t.integer  "international"
    t.string   "asin_id"
    t.integer  "zaiko_qty"
    t.string   "fulfillment_channel"
    t.integer  "createflg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_reports", force: true do |t|
    t.integer  "user_id"
    t.date     "sell_date"
    t.string   "settlement_no"
    t.string   "type"
    t.string   "order_no"
    t.string   "seller_sku"
    t.string   "sku_name"
    t.integer  "qty"
    t.string   "amazon_service"
    t.string   "fulfillment_channel"
    t.string   "order_city"
    t.string   "order_state"
    t.string   "order_postal"
    t.decimal  "product_sales",          precision: 10, scale: 0
    t.decimal  "shipping_credits",       precision: 10, scale: 0
    t.decimal  "gift_wrap_credits",      precision: 10, scale: 0
    t.decimal  "promotional_rebates",    precision: 10, scale: 0
    t.decimal  "selling_fees",           precision: 10, scale: 0
    t.string   "fba"
    t.decimal  "fees",                   precision: 10, scale: 0
    t.decimal  "other_transaction_fees", precision: 10, scale: 0
    t.decimal  "other_total",            precision: 10, scale: 0
    t.integer  "createflg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.integer  "user_id"
    t.date     "ship_date"
    t.string   "seller_sku"
    t.integer  "category_id"
    t.decimal  "supplier_price", precision: 10, scale: 0
    t.decimal  "first_price",    precision: 10, scale: 0
    t.integer  "qty"
    t.string   "store"
    t.integer  "createflg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
