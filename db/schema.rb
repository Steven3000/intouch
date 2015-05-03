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

ActiveRecord::Schema.define(version: 20150503010448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.integer  "artist_id"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "download_link"
    t.text     "embedded_code"
    t.string   "itunes"
    t.string   "google"
    t.string   "amazon"
    t.string   "spotify"
    t.text     "youtube"
    t.datetime "release_date"
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id", using: :btree

  create_table "announcements", force: :cascade do |t|
    t.integer  "song_id"
    t.datetime "post_creation_date"
    t.text     "url"
    t.string   "artwork"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.string   "record_label"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "album_id"
  end

  create_table "follows", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.string   "features"
    t.string   "producer"
    t.string   "download_link"
    t.text     "embedded_code"
    t.text     "itunes"
    t.text     "google"
    t.text     "amazon"
    t.text     "spotify"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "artist_id"
    t.text     "youtube"
    t.integer  "track"
    t.integer  "album_id"
    t.string   "album_title"
    t.datetime "release_date"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "albums", "artists"
end
