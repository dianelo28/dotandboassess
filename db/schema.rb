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

ActiveRecord::Schema.define(version: 20150917021310) do

  create_table "labels", force: :cascade do |t|
    t.string   "name"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "phone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "from_company"
    t.string   "from_street1"
    t.string   "from_street2"
    t.string   "from_city"
    t.string   "from_state"
    t.string   "from_zip"
    t.string   "from_phone"
    t.integer  "width"
    t.integer  "length"
    t.integer  "height"
    t.integer  "weight"
  end

end
