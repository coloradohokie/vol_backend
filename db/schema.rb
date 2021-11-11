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

ActiveRecord::Schema.define(version: 2021_09_17_060553) do

  create_table "assignments", force: :cascade do |t|
    t.integer "contact_id"
    t.integer "opportunities_id"
    t.integer "request_statuses_id"
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["opportunities_id"], name: "index_assignments_on_opportunities_id"
    t.index ["request_statuses_id"], name: "index_assignments_on_request_statuses_id"
  end

  create_table "opportunities", force: :cascade do |t|
    t.integer "event_id"
    t.string "event_title"
    t.date "event_date"
    t.time "shift_start"
    t.time "shift_end"
    t.integer "roles_id"
    t.float "credit_hours"
    t.boolean "visibility"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["roles_id"], name: "index_opportunities_on_roles_id"
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

end
