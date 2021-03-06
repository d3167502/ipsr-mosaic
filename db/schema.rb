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

ActiveRecord::Schema.define(version: 20161201054831) do

  create_table "mosaics", force: :cascade do |t|
    t.string   "grid"
    t.string   "steps"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "step_counter"
    t.integer  "number_of_colors"
    t.string   "dominant_color"
    t.integer  "user_id"
    t.integer  "time_taken"
    t.integer  "time_left"
    t.integer  "time_submitted"
    t.integer  "time_total"
    t.integer  "width"
    t.integer  "height"
    t.float    "completed"
  end

  add_index "mosaics", ["user_id"], name: "index_mosaics_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
