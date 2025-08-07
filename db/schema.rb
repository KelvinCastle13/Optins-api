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

ActiveRecord::Schema[8.0].define(version: 2025_08_07_004539) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.integer "strategy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "option_legs", force: :cascade do |t|
    t.bigint "strategy_id", null: false
    t.string "leg_type"
    t.string "leg_action"
    t.string "expiration"
    t.string "strike_type"
    t.string "strike_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["strategy_id"], name: "index_option_legs_on_strategy_id"
  end

  create_table "strategies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.integer "leg_count"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "option_legs", "strategies"
end
