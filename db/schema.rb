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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130321201955) do

  create_table "flights", :force => true do |t|
    t.string   "code"
    t.string   "airport_depart"
    t.string   "airport_arrive"
    t.date     "date_depart"
    t.date     "date_arrive"
    t.integer  "number_of_rows"
    t.integer  "number_of_columns"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "seats", :force => true do |t|
    t.integer  "flight_id"
    t.integer  "user_id"
    t.integer  "row"
    t.integer  "column"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "flight_id"
    t.integer  "seat_id"
    t.boolean  "is_admin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
