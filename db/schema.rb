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

ActiveRecord::Schema.define(version: 20150127222413) do

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.string   "website"
    t.string   "record_label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", force: :cascade do |t|
    t.string   "artist"
    t.string   "title"
    t.string   "artwork"
    t.string   "features"
    t.string   "producer"
    t.string   "album"
    t.string   "release_date"
    t.string   "download_link"
    t.text     "embedded_code"
    t.text     "itunes"
    t.text     "google"
    t.text     "amazon"
    t.text     "spotify"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
