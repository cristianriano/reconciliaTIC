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

ActiveRecord::Schema.define(version: 20150918224647) do

  create_table "answers", force: :cascade do |t|
    t.text     "content"
    t.integer  "state",       default: 0
    t.integer  "question_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"

  create_table "pardons", force: :cascade do |t|
    t.string   "content"
    t.string   "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publications", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  add_index "publications", ["user_id"], name: "index_publications_on_user_id"

  create_table "questions", force: :cascade do |t|
    t.text     "content"
    t.string   "email"
    t.string   "zone"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.text     "history"
    t.string   "zone"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
    t.string   "picture"
  end

  add_index "users", ["name"], name: "index_users_on_name"

end
