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

ActiveRecord::Schema.define(version: 20140708162049) do

  create_table "articles", force: true do |t|
    t.integer  "travel_point_id"
    t.integer  "serial"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", force: true do |t|
    t.integer  "travel_id"
    t.integer  "serial"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.string   "title"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "serial"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "travel_points", force: true do |t|
    t.integer  "day_id"
    t.integer  "serial"
    t.float    "longitude",  limit: 24
    t.float    "latitude",   limit: 24
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travels", force: true do |t|
    t.datetime "date"
    t.string   "name"
    t.text     "description"
    t.integer  "photo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
