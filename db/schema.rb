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

ActiveRecord::Schema.define(version: 20160128102108) do

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "salutation"
    t.string   "username"
    t.string   "company"
    t.string   "department"
    t.string   "title"
    t.string   "country"
    t.string   "city"
    t.string   "state"
    t.string   "postalcode"
    t.string   "address"
    t.string   "tel"
    t.string   "fax"
    t.string   "mobile"
    t.string   "url"
    t.integer  "gender"
    t.date     "birthdate"
    t.string   "guraduation"
    t.integer  "workexperience"
    t.string   "language"
    t.string   "japanese"
    t.string   "english"
    t.string   "toeic"
    t.string   "toefl"
    t.integer  "Q01"
    t.integer  "Q02"
    t.integer  "Q03"
    t.integer  "Q04"
    t.integer  "Q05"
    t.string   "comment"
    t.integer  "status"
    t.string   "note"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
