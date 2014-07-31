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

ActiveRecord::Schema.define(version: 20140731164246) do

  create_table "as", force: true do |t|
    t.integer  "quiz_id"
    t.integer  "code"
    t.string   "title"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  add_index "as", ["quiz_id"], name: "index_as_on_quiz_id", using: :btree

  create_table "options", force: true do |t|
    t.integer  "q_id"
    t.string   "text"
    t.integer  "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "options", ["q_id"], name: "index_options_on_q_id", using: :btree

  create_table "qs", force: true do |t|
    t.integer  "order"
    t.integer  "quiz_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "qs", ["order"], name: "index_qs_on_order", using: :btree
  add_index "qs", ["quiz_id"], name: "index_qs_on_quiz_id", using: :btree

  create_table "quizzes", force: true do |t|
    t.string   "title"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

end
