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

ActiveRecord::Schema.define(version: 2020_06_18_140120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_custom_attributes", force: :cascade do |t|
    t.string "managable_type"
    t.bigint "managable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
    t.boolean "required"
    t.index ["managable_type", "managable_id"], name: "index_admin_custom_attributes"
  end

  create_table "communities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "custom_attributes", force: :cascade do |t|
    t.string "customizable_type"
    t.bigint "customizable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
    t.text "text_value"
    t.boolean "boolean_value"
    t.index ["customizable_type", "customizable_id"], name: "index_custom_attributes"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.string "description"
    t.string "location"
    t.string "owner"
    t.boolean "full"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "community_id"
    t.index ["community_id"], name: "index_events_on_community_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.bigint "community_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_memberships_on_community_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_registrations_on_event_id"
    t.index ["user_id"], name: "index_registrations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "role"
  end

  add_foreign_key "memberships", "communities"
  add_foreign_key "memberships", "users"
end
