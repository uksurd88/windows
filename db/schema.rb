# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100408125054) do

  create_table "companies", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "information", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mywins", :force => true do |t|
    t.string   "initial"
    t.string   "surname"
    t.string   "address"
    t.string   "areacode"
    t.integer  "phonenumber"
    t.integer  "numberofwindows"
    t.text     "windowsdescription"
    t.integer  "windowslayout"
    t.integer  "points"
    t.boolean  "accept"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reactions", :force => true do |t|
    t.string   "company"
    t.string   "rotation"
    t.string   "preview"
    t.boolean  "accept"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searchoffers", :force => true do |t|
    t.string   "company"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
