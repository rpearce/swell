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

ActiveRecord::Schema.define(version: 20150716135540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competitions", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "location",   null: false
    t.date     "occurs_on",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entrants", force: :cascade do |t|
    t.integer  "competition_id", null: false
    t.integer  "surfer_id",      null: false
    t.integer  "score"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "entrants", ["competition_id"], name: "index_entrants_on_competition_id", using: :btree
  add_index "entrants", ["surfer_id"], name: "index_entrants_on_surfer_id", using: :btree

  create_table "surfers", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "age"
    t.string   "picture"
    t.string   "hometown"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
