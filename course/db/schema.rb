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

ActiveRecord::Schema.define(version: 20150203093216) do

  create_table "subscribers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.integer  "phone"
    t.string   "participation"
    t.string   "titul"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.string   "education"
    t.string   "profesion"
    t.string   "intro"
    t.date     "intro_date"
    t.string   "training"
    t.date     "training_date"
    t.string   "training_place"
    t.string   "nazev"
    t.integer  "ico"
  end

end
