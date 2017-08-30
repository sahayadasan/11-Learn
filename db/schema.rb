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

ActiveRecord::Schema.define(version: 20170829204823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "klasses", force: :cascade do |t|
    t.string "name", null: false
    t.string "subject", null: false
    t.integer "level", null: false
    t.integer "credits", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.string "semester", null: false
    t.integer "year", null: false
    t.integer "capacity", null: false
    t.boolean "is_open", default: false
    t.bigint "klass_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["klass_id"], name: "index_registrations_on_klass_id"
    t.index ["teacher_id"], name: "index_registrations_on_teacher_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "azure"
    t.string "link"
    t.integer "position", default: 0
    t.bigint "klass_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["klass_id"], name: "index_sections_on_klass_id"
  end

  create_table "syllabuses", force: :cascade do |t|
    t.string "title", null: false
    t.string "content", null: false
    t.string "file_path"
    t.string "link"
    t.bigint "klass_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["klass_id"], name: "index_syllabuses_on_klass_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "student"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "registrations", "klasses"
  add_foreign_key "registrations", "users", column: "teacher_id"
  add_foreign_key "sections", "klasses"
end
