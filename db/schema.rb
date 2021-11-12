# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_17_060537) do

  create_table "opportunities", force: :cascade do |t|
    t.integer "contact_id"
    t.integer "event_id"
    t.string "event_title"
    t.date "event_start"
    t.date "event_end"
    t.time "shift_start"
    t.time "shift_end"
    t.integer "role_id", null: false
    t.float "credit_hours"
    t.integer "request_status_id", null: false
    t.boolean "visibile"
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["request_status_id"], name: "index_opportunities_on_request_status_id"
    t.index ["role_id"], name: "index_opportunities_on_role_id"
  end

  create_table "request_statuses", force: :cascade do |t|
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "role"
    t.float "rate"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_permissions_lovs", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "opportunities", "request_statuses"
  add_foreign_key "opportunities", "roles"
end
