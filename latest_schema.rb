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

ActiveRecord::Schema.define(version: 20140610141126) do

  create_table "centres", force: true do |t|
    t.string   "name",         null: false
    t.integer  "institute_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutes", force: true do |t|
    t.string   "name",                              null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "email",                             null: false
    t.string   "contact_no",                        null: false
    t.string   "website"
    t.boolean  "is_coaching_class", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "option_banks", force: true do |t|
    t.string   "key"
    t.integer  "value"
    t.integer  "question_bank_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", force: true do |t|
    t.string   "key"
    t.integer  "value"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_banks", force: true do |t|
    t.text     "statement"
    t.integer  "weightage"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chapter_id"
  end

  create_table "questions", force: true do |t|
    t.text     "statement"
    t.integer  "weightage"
    t.integer  "test_id"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chapter_id"
  end

  create_table "result_details", force: true do |t|
    t.string   "question_type",              null: false
    t.string   "answer",        default: ""
    t.integer  "score",         default: 0
    t.integer  "question_id",                null: false
    t.integer  "user_id",                    null: false
    t.integer  "result_id",                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.integer  "sub_score",  default: 0
    t.integer  "obj_score",              null: false
    t.string   "time_taken",             null: false
    t.integer  "test_id",                null: false
    t.integer  "user_id",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name",                     null: false
    t.string   "description", default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.string   "name",                           null: false
    t.boolean  "is_published",   default: false
    t.boolean  "is_over",        default: false
    t.integer  "created_by"
    t.integer  "marked_over_by"
    t.integer  "published_by"
    t.integer  "total_marks",                    null: false
    t.integer  "passing_marks",                  null: false
    t.integer  "time_hrs",                       null: false
    t.integer  "time_mins",                      null: false
    t.integer  "institute_id",                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "standard",                       null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
    t.integer  "centre_id"
    t.string   "name"
    t.string   "standard",                               null: false
    t.boolean  "has_subscribed",         default: false
    t.integer  "institute_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
