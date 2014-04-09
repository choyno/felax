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

ActiveRecord::Schema.define(version: 20140409021543) do

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nick_name"
    t.string   "gender"
    t.text     "address"
    t.string   "phone_number"
    t.integer  "balance"
    t.string   "gender_pref"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true, using: :btree
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree

  create_table "events", force: true do |t|
    t.integer  "customer_id"
    t.integer  "therapist_id"
    t.integer  "location_id"
    t.integer  "service_id"
    t.boolean  "walkin"
    t.boolean  "cancel"
    t.text     "cancel_reason"
    t.integer  "room_id"
    t.datetime "starts_at"
    t.datetime "stops_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "typer"
    t.integer  "name"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "time_length"
    t.integer  "commission"
    t.string   "room_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "therapists", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "address"
    t.string   "phone_number"
    t.string   "therapist_type"
    t.string   "ssn"
    t.string   "nick_name"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "therapists", ["email"], name: "index_therapists_on_email", unique: true, using: :btree
  add_index "therapists", ["reset_password_token"], name: "index_therapists_on_reset_password_token", unique: true, using: :btree

end
