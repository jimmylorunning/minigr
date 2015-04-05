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

ActiveRecord::Schema.define(version: 20150405130105) do

  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "copies", force: :cascade do |t|
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "edition_id"
    t.integer  "shelf_id"
  end

  add_index "copies", ["edition_id"], name: "index_copies_on_edition_id"
  add_index "copies", ["shelf_id"], name: "index_copies_on_shelf_id"

  create_table "credits", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "author_id"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "credits", ["author_id"], name: "index_credits_on_author_id"
  add_index "credits", ["book_id"], name: "index_credits_on_book_id"

  create_table "editions", force: :cascade do |t|
    t.string   "format"
    t.string   "isbn"
    t.string   "publisher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "book_id"
  end

  add_index "editions", ["book_id"], name: "index_editions_on_book_id"

  create_table "follow_relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "follow_relationships", ["followed_id"], name: "index_follow_relationships_on_followed_id"
  add_index "follow_relationships", ["follower_id", "followed_id"], name: "index_follow_relationships_on_follower_id_and_followed_id", unique: true
  add_index "follow_relationships", ["follower_id"], name: "index_follow_relationships_on_follower_id"

  create_table "ratings", force: :cascade do |t|
    t.float    "score"
    t.integer  "copy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ratings", ["copy_id"], name: "index_ratings_on_copy_id"

  create_table "readers", force: :cascade do |t|
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

  add_index "readers", ["email"], name: "index_readers_on_email", unique: true
  add_index "readers", ["reset_password_token"], name: "index_readers_on_reset_password_token", unique: true

  create_table "reviews", force: :cascade do |t|
    t.string   "review"
    t.integer  "copy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["copy_id"], name: "index_reviews_on_copy_id"

  create_table "shelves", force: :cascade do |t|
    t.string   "name"
    t.integer  "reader_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shelves", ["reader_id"], name: "index_shelves_on_reader_id"

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "copy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["copy_id"], name: "index_taggings_on_copy_id"
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.integer  "reader_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tags", ["reader_id"], name: "index_tags_on_reader_id"

end
