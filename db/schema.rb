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

ActiveRecord::Schema.define(version: 2021_01_14_235830) do

  create_table "cards", force: :cascade do |t|
    t.string "front"
    t.string "back"
    t.string "info"
    t.integer "collection_id"
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "user_id"
    t.integer "subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
