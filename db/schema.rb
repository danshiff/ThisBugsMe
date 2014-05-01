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

ActiveRecord::Schema.define(version: 20140501182747) do

  create_table "connections", force: true do |t|
    t.integer  "user_id"
    t.integer  "drawer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "containers", force: true do |t|
    t.integer  "connection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "num_bugs"
    t.integer  "box_num"
    t.integer  "min_unique"
    t.integer  "max_unique"
    t.integer  "uniq_labels"
    t.integer  "typed_labels"
    t.integer  "handwritten_labels"
    t.integer  "unsure_labels"
    t.integer  "obstructed_labels"
    t.integer  "damaged_labels"
    t.string   "biggest_bug"
    t.string   "smallest_bug"
    t.string   "in_box_label"
    t.string   "on_box_label"
    t.string   "near_box_label"
    t.string   "box_type"
    t.integer  "max_tags_on_pin"
  end

  create_table "drawers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_url"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
