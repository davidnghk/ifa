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

ActiveRecord::Schema.define(version: 20160512052338) do

  create_table "stock_prices", force: :cascade do |t|
    t.date     "trade_date"
    t.decimal  "open",                 precision: 15, scale: 2
    t.integer  "volume",     limit: 4
    t.decimal  "high",                 precision: 15, scale: 2
    t.decimal  "low",                  precision: 15, scale: 2
    t.decimal  "close",                precision: 15, scale: 2
    t.decimal  "adj_close",            precision: 15, scale: 2
    t.decimal  "roi",                  precision: 15, scale: 10
    t.integer  "stock_id",   limit: 4
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "stock_prices", ["stock_id"], name: "index_stock_prices_on_stock_id", using: :btree

  create_table "stocks", force: :cascade do |t|
    t.string   "ticker",       limit: 255
    t.string   "name",         limit: 255
    t.decimal  "last_price",               precision: 15, scale: 2
    t.date     "pricing_date"
    t.decimal  "roi",                      precision: 15, scale: 8
    t.decimal  "risk",                     precision: 15, scale: 5
    t.decimal  "sharpe",                   precision: 15, scale: 5
    t.decimal  "alpha",                    precision: 15, scale: 5
    t.integer  "parent_id",    limit: 4
    t.integer  "no_of_prices", limit: 4
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  add_foreign_key "stock_prices", "stocks"
end
