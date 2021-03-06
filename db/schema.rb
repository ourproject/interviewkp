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

ActiveRecord::Schema.define(version: 20140313123918) do

  create_table "answers", force: true do |t|
    t.string   "test_id"
    t.string   "user_id"
    t.string   "question_id"
    t.string   "selected_answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clips", force: true do |t|
    t.string   "user_id"
    t.string   "interview_id"
    t.string   "question_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "final_decisions", force: true do |t|
    t.string   "user_id"
    t.string   "interview_id"
    t.string   "decision"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "final_results", force: true do |t|
    t.string   "user_id"
    t.string   "interview_id"
    t.string   "desicion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interview_questions", force: true do |t|
    t.text     "question"
    t.string   "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interviews", force: true do |t|
    t.string   "set_by"
    t.integer  "number_of_questions"
    t.integer  "duration"
    t.integer  "cutoff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_questions", force: true do |t|
    t.text     "question"
    t.string   "option_a"
    t.string   "option_b"
    t.string   "option_c"
    t.string   "option_d"
    t.string   "anwser"
    t.string   "question_type"
    t.string   "created_by"
    t.integer  "difficulty_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_results", force: true do |t|
    t.string   "test_id"
    t.string   "user_id"
    t.string   "marks"
    t.string   "pass_or_fail"
    t.string   "notification_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.string   "set_by"
    t.integer  "number_of_questions"
    t.integer  "duration"
    t.integer  "cutoff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "role"
    t.string   "name"
    t.string   "email_id"
    t.string   "password"
    t.string   "date_of_birth"
    t.string   "qualification"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
