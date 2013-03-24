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

ActiveRecord::Schema.define(:version => 20130324032529) do

  create_table "bookings", :force => true do |t|
    t.integer  "traveler_id"
    t.integer  "seat_id"
    t.integer  "voyage_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "seats", :force => true do |t|
    t.integer  "zeppelin_id"
    t.integer  "row"
    t.integer  "column"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "travelers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "is_admin"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  create_table "voyages", :force => true do |t|
    t.string   "code"
    t.string   "airfield_depart"
    t.string   "airfield_arrive"
    t.date     "voyage_date"
    t.integer  "zeppelin_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.float    "arrive_lat",      :default => 0.0
    t.float    "arrive_long",     :default => 0.0
    t.float    "depart_lat",      :default => 0.0
    t.float    "depart_long",     :default => 0.0
  end

  create_table "zeppelins", :force => true do |t|
    t.string   "style"
    t.integer  "number_of_rows"
    t.integer  "number_of_columns"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "name"
  end

end
