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

ActiveRecord::Schema.define(version: 20160212144733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colleges", force: :cascade do |t|
    t.string   "name",          limit: 100
    t.string   "country"
    t.integer  "sat_max_score"
    t.integer  "sat_min_score"
    t.integer  "tuition_fees"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colleges_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "college_id", null: false
  end

  add_index "colleges_students", ["college_id", "student_id"], name: "index_colleges_students_on_college_id_and_student_id", using: :btree

  create_table "mentors", force: :cascade do |t|
    t.string   "name",       limit: 100, null: false
    t.string   "sex"
    t.integer  "age"
    t.string   "bio",        limit: 70
    t.date     "DOB"
    t.string   "image",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mentors", ["id"], name: "index_mentors_on_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.integer  "mentor_id",                  null: false
    t.string   "name",           limit: 100, null: false
    t.string   "sex"
    t.integer  "age"
    t.date     "DOB"
    t.string   "current_school"
    t.string   "current_level"
    t.string   "country"
    t.string   "sat_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["id"], name: "index_students_on_id", using: :btree

end
