# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_02_160023) do
  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "description"
    t.integer "credits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string "wno"
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer "semester_id", null: false
    t.integer "course_id", null: false
    t.integer "instructor_id", null: false
    t.string "modality"
    t.string "days"
    t.string "hours"
    t.string "room"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_sections_on_course_id"
    t.index ["instructor_id"], name: "index_sections_on_instructor_id"
    t.index ["semester_id"], name: "index_sections_on_semester_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.string "term"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "sections", "courses"
  add_foreign_key "sections", "instructors"
  add_foreign_key "sections", "semesters"
end
