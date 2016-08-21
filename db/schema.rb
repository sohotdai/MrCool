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

ActiveRecord::Schema.define(version: 20160814071142) do

  create_table "locations", force: true do |t|
    t.string   "name",       limit: 80, default: "", null: false
    t.string   "code",       limit: 10, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "first_name",            limit: 30, default: "", null: false
    t.string   "middle_name",           limit: 10, default: "", null: false
    t.string   "last_name",             limit: 30, default: "", null: false
    t.string   "medical_record_number", limit: 10, default: "", null: false
    t.string   "year",                  limit: 6,  default: "", null: false
    t.string   "month",                 limit: 6,  default: "", null: false
    t.string   "day",                   limit: 6,  default: "", null: false
    t.integer  "gender",                           default: 0,  null: false
    t.integer  "status",                           default: 1,  null: false
    t.integer  "location_id",                      default: 0,  null: false
    t.integer  "viewed_count",                     default: 0,  null: false
    t.integer  "is_deleted",                       default: 0,  null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
