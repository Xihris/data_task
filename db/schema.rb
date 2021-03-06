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

ActiveRecord::Schema.define(version: 20170526084453) do

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "department"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "temp_tasks", force: :cascade do |t|
    t.text "companys"
    t.date "date_start"
    t.date "date_end"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "unit"
    t.string "date_start"
    t.date "date_end"
    t.date "date_finish"
    t.integer "author_id"
    t.integer "user_id"
    t.boolean "complete", default: false
    t.text "comment"
    t.integer "sum_ur"
    t.integer "sum_fiz"
    t.integer "id_temp_task"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "role"
    t.string "password"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
