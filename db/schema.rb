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

ActiveRecord::Schema.define(version: 20141006032554) do

  create_table "course_schedules", id: false, force: true do |t|
    t.integer "course_id",   null: false
    t.integer "schedule_id", null: false
  end

  add_index "course_schedules", ["course_id", "schedule_id"], name: "index_course_schedules_on_course_id_and_schedule_id"
  add_index "course_schedules", ["schedule_id", "course_id"], name: "index_course_schedules_on_schedule_id_and_course_id"

  create_table "courses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "major_requirements", id: false, force: true do |t|
    t.integer "major_id",       null: false
    t.integer "requirement_id", null: false
  end

  add_index "major_requirements", ["major_id", "requirement_id"], name: "index_major_requirements_on_major_id_and_requirement_id"
  add_index "major_requirements", ["requirement_id", "major_id"], name: "index_major_requirements_on_requirement_id_and_major_id"

  create_table "major_students", id: false, force: true do |t|
    t.integer "major_id",   null: false
    t.integer "student_id", null: false
  end

  add_index "major_students", ["major_id", "student_id"], name: "index_major_students_on_major_id_and_student_id"
  add_index "major_students", ["student_id", "major_id"], name: "index_major_students_on_student_id_and_major_id"

  create_table "majors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requirements", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "name"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules_students", id: false, force: true do |t|
    t.integer "student_id",  null: false
    t.integer "schedule_id", null: false
  end

  add_index "schedules_students", ["schedule_id", "student_id"], name: "index_schedules_students_on_schedule_id_and_student_id"
  add_index "schedules_students", ["student_id", "schedule_id"], name: "index_schedules_students_on_student_id_and_schedule_id"

  create_table "students", force: true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true

end
