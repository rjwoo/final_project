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

ActiveRecord::Schema.define(version: 20160811065733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercise_logs", force: :cascade do |t|
    t.integer  "reps"
    t.float    "weight"
    t.integer  "sets"
    t.float    "volume"
    t.integer  "exercise_id"
    t.integer  "exercise_option_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "exercise_logs", ["exercise_id"], name: "index_exercise_logs_on_exercise_id", using: :btree
  add_index "exercise_logs", ["exercise_option_id"], name: "index_exercise_logs_on_exercise_option_id", using: :btree

  create_table "exercise_options", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.integer  "program_id"
    t.integer  "exercise_option_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "exercises", ["exercise_option_id"], name: "index_exercises_on_exercise_option_id", using: :btree
  add_index "exercises", ["program_id"], name: "index_exercises_on_program_id", using: :btree

  create_table "programs", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "programs", ["user_id"], name: "index_programs_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "exercise_logs", "exercise_options"
  add_foreign_key "exercise_logs", "exercises"
  add_foreign_key "exercises", "exercise_options"
  add_foreign_key "exercises", "programs"
  add_foreign_key "programs", "users"
end
