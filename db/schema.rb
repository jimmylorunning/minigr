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

ActiveRecord::Schema.define(version: 20150331221358) do

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

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "reader_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categories", ["reader_id"], name: "index_categories_on_reader_id"

  create_table "copies", force: :cascade do |t|
    t.string   "notes"
    t.float    "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "edition_id"
    t.integer  "category_id"
  end

  add_index "copies", ["category_id"], name: "index_copies_on_category_id"
  add_index "copies", ["edition_id"], name: "index_copies_on_edition_id"

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

  create_table "shelves", force: :cascade do |t|
    t.string   "name"
    t.integer  "reader_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shelves", ["reader_id"], name: "index_shelves_on_reader_id"

  create_table "shelvings", force: :cascade do |t|
    t.integer  "shelf_id"
    t.integer  "copy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shelvings", ["copy_id"], name: "index_shelvings_on_copy_id"
  add_index "shelvings", ["shelf_id"], name: "index_shelvings_on_shelf_id"

end
