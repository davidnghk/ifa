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

ActiveRecord::Schema.define(version: 20160512123059) do

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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0,  null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  add_foreign_key "stock_prices", "stocks"
end
