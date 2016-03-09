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

ActiveRecord::Schema.define(version: 20160309110932) do

  create_table "cities", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "province_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "collect_criterions", force: :cascade do |t|
    t.time     "start_at"
    t.time     "end_at"
    t.integer  "assign_station_mins", limit: 4
    t.integer  "response_mins",       limit: 4
    t.integer  "assign_man_mins",     limit: 4
    t.integer  "collect_mins",        limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "department_id",       limit: 4
    t.integer  "city_id",             limit: 4
    t.integer  "province_id",         limit: 4
  end

  create_table "collects", force: :cascade do |t|
    t.string   "accepted_code", limit: 255
    t.integer  "waybill_id",    limit: 4
    t.integer  "step",          limit: 4
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id",       limit: 4
    t.integer  "department_id", limit: 4
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.datetime "collect_start"
    t.datetime "collect_end"
    t.integer  "dtype",         limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "city_id",       limit: 4
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "city_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "keys", force: :cascade do |t|
    t.string   "origin",     limit: 255
    t.string   "api_key",    limit: 255
    t.integer  "ktype",      limit: 4
    t.string   "api_secret", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "overtimes", force: :cascade do |t|
    t.integer  "step",        limit: 4
    t.integer  "delay_mins",  limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "timeline_id", limit: 4
  end

  create_table "provinces", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "routings", force: :cascade do |t|
    t.integer  "shift",                     limit: 4
    t.time     "start_at"
    t.integer  "collect_mins",              limit: 4
    t.integer  "in_mins",                   limit: 4
    t.integer  "out_mins",                  limit: 4
    t.integer  "arrival_mins",              limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "start_province_id",         limit: 4
    t.integer  "start_city_id",             limit: 4
    t.integer  "start_department_id",       limit: 4
    t.integer  "destination_province_id",   limit: 4
    t.integer  "destination_city_id",       limit: 4
    t.integer  "destination_department_id", limit: 4
  end

  create_table "timelines", force: :cascade do |t|
    t.datetime "opt_at"
    t.text     "remark",     limit: 65535
    t.integer  "step",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "collect_id", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "department_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "waybills", force: :cascade do |t|
    t.string   "code",          limit: 255
    t.integer  "user_id",       limit: 4
    t.integer  "collection_id", limit: 4
    t.integer  "status",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
