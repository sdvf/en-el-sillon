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

ActiveRecord::Schema.define(version: 20130727232249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "religion"
    t.string   "alma_mater"
    t.string   "political_party"
    t.string   "description"
    t.datetime "date_of_birth"
    t.string   "place_of_birth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presidencies", force: true do |t|
    t.integer  "president_id"
    t.integer  "vice_president_id"
    t.integer  "preceded_by_id"
    t.integer  "succeeded_by_id"
    t.datetime "from"
    t.datetime "end"
    t.boolean  "democratic"
    t.float    "percentage_of_votes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presidencies_images", force: true do |t|
    t.integer "presidency_id"
    t.integer "image_id"
  end

end
