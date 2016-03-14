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

ActiveRecord::Schema.define(version: 20160312101739) do

  create_table "cities", :force => true do |t|
    #t.column "id",          "int(11)",      :null => false, :comment => "AUTO_INCREMENT PRIMARY KEY by rails"
    t.column "name",        "varchar(255)",                 :comment => ""
    t.column "province_id", "int(11)",                      :comment => ""
    t.column "created_at",  "datetime",     :null => false, :comment => ""
    t.column "updated_at",  "datetime",     :null => false, :comment => ""
  end

  create_table "collect_criterions", :force => true do |t|
    #t.column "id",                  "int(11)",  :null => false, :comment => "AUTO_INCREMENT PRIMARY KEY by rails"
    t.column "start_at",            "time",                     :comment => ""
    t.column "end_at",              "time",                     :comment => ""
    t.column "assign_station_mins", "int(11)",                  :comment => ""
    t.column "response_mins",       "int(11)",                  :comment => ""
    t.column "assign_man_mins",     "int(11)",                  :comment => ""
    t.column "collect_mins",        "int(11)",                  :comment => ""
    t.column "created_at",          "datetime", :null => false, :comment => ""
    t.column "updated_at",          "datetime", :null => false, :comment => ""
    t.column "department_id",       "int(11)",                  :comment => ""
    t.column "city_id",             "int(11)",                  :comment => ""
    t.column "province_id",         "int(11)",                  :comment => ""
  end

  create_table "collects", :force => true do |t|
    #t.column "id",            "int(11)",      :null => false, :comment => "AUTO_INCREMENT PRIMARY KEY by rails"
    t.column "accepted_code", "varchar(255)",                 :comment => ""
    t.column "waybill_id",    "int(11)",                      :comment => ""
    t.column "step",          "int(11)",                      :comment => ""
    t.column "start_at",      "datetime",                     :comment => ""
    t.column "end_at",        "datetime",                     :comment => ""
    t.column "created_at",    "datetime",     :null => false, :comment => ""
    t.column "updated_at",    "datetime",     :null => false, :comment => ""
    t.column "user_id",       "int(11)",                      :comment => ""
    t.column "department_id", "int(11)",                      :comment => ""
  end

  create_table "departments", :force => true do |t|
    #t.column "id",         "int(11)",      :null => false, :comment => "AUTO_INCREMENT PRIMARY KEY by rails"
    t.column "name",       "varchar(255)",                 :comment => ""
    t.column "dtype",      "int(11)",                      :comment => ""
    t.column "created_at", "datetime",     :null => false, :comment => ""
    t.column "updated_at", "datetime",     :null => false, :comment => ""
    t.column "city_id",    "int(11)",                      :comment => ""
  end

  create_table "districts", :force => true do |t|
    #t.column "id",         "int(11)",      :null => false, :comment => "AUTO_INCREMENT PRIMARY KEY by rails"
    t.column "name",       "varchar(255)",                 :comment => ""
    t.column "city_id",    "int(11)",                      :comment => ""
    t.column "created_at", "datetime",     :null => false, :comment => ""
    t.column "updated_at", "datetime",     :null => false, :comment => ""
  end

  create_table "keys", :force => true do |t|
    #t.column "id",         "int(11)",      :null => false, :comment => "AUTO_INCREMENT PRIMARY KEY by rails"
    t.column "origin",     "varchar(255)",                 :comment => ""
    t.column "api_key",    "varchar(255)",                 :comment => ""
    t.column "ktype",      "int(11)",                      :comment => ""
    t.column "api_secret", "varchar(255)",                 :comment => ""
    t.column "created_at", "datetime",     :null => false, :comment => ""
    t.column "updated_at", "datetime",     :null => false, :comment => ""
  end

  create_table "overtimes", :force => true do |t|
    #t.column "id",         "int(11)",  :null => false, :comment => "AUTO_INCREMENT PRIMARY KEY by rails"
    t.column "step",       "int(11)",                  :comment => ""
    t.column "delay_mins", "int(11)",                  :comment => ""
    t.column "created_at", "datetime", :null => false, :comment => ""
    t.column "updated_at", "datetime", :null => false, :comment => ""
    t.column "collect_id", "int(11)",                  :comment => ""
    t.column "status",     "int(11)",                  :comment => ""
    t.column "otype",      "int(11)",                  :comment => ""
  end

  create_table "provinces", :force => true do |t|
    #t.column "id",         "int(11)",      :null => false, :comment => "AUTO_INCREMENT PRIMARY KEY by rails"
    t.column "name",       "varchar(255)",                 :comment => ""
    t.column "created_at", "datetime",     :null => false, :comment => ""
    t.column "updated_at", "datetime",     :null => false, :comment => ""
  end

  create_table "routings", :force => true do |t|
    #t.column "id",                        "int(11)",  :null => false, :comment => "AUTO_INCREMENT PRIMARY KEY by rails"
    t.column "shift",                     "int(11)",                  :comment => ""
    t.column "start_at",                  "time",                     :comment => ""
    t.column "collect_mins",              "int(11)",                  :comment => ""
    t.column "in_mins",                   "int(11)",                  :comment => ""
    t.column "out_mins",                  "int(11)",                  :comment => ""
    t.column "arrival_mins",              "int(11)",                  :comment => ""
    t.column "created_at",                "datetime", :null => false, :comment => ""
    t.column "updated_at",                "datetime", :null => false, :comment => ""
    t.column "start_province_id",         "int(11)",                  :comment => ""
    t.column "start_city_id",             "int(11)",                  :comment => ""
    t.column "start_department_id",       "int(11)",                  :comment => ""
    t.column "destination_province_id",   "int(11)",                  :comment => ""
    t.column "destination_city_id",       "int(11)",                  :comment => ""
    t.column "destination_department_id", "int(11)",                  :comment => ""
  end

  create_table "timelines", :force => true do |t|
    #t.column "id",         "int(11)",  :null => false, :comment => "AUTO_INCREMENT PRIMARY KEY by rails"
    t.column "opt_at",     "datetime",                 :comment => ""
    t.column "remark",     "text",                     :comment => ""
    t.column "step",       "int(11)",                  :comment => ""
    t.column "created_at", "datetime", :null => false, :comment => ""
    t.column "updated_at", "datetime", :null => false, :comment => ""
    t.column "collect_id", "int(11)",                  :comment => ""
    t.column "user_id",    "int(11)",                  :comment => ""
    t.column "ttype",      "int(11)",                  :comment => ""
  end

  create_table "users", :force => true do |t|
    #t.column "id",            "int(11)",      :null => false, :comment => "AUTO_INCREMENT PRIMARY KEY by rails"
    t.column "name",          "varchar(255)",                 :comment => "用户名称"
    t.column "department_id", "int(11)",                      :comment => ""
    t.column "created_at",    "datetime",     :null => false, :comment => ""
    t.column "updated_at",    "datetime",     :null => false, :comment => ""
  end

  create_table "waybills", :force => true do |t|
    #t.column "id",            "int(11)",      :null => false, :comment => "AUTO_INCREMENT PRIMARY KEY by rails"
    t.column "code",          "varchar(255)",                 :comment => ""
    t.column "user_id",       "int(11)",                      :comment => ""
    t.column "collect_id",    "int(11)",                      :comment => ""
    t.column "step",          "int(11)",                      :comment => ""
    t.column "created_at",    "datetime",     :null => false, :comment => ""
    t.column "updated_at",    "datetime",     :null => false, :comment => ""
    t.column "department_id", "int(11)",                      :comment => ""
  end

end
