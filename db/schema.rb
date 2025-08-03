ActiveRecord::Schema[8.0].define(version: 2025_08_03_233650) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "option_legs", force: :cascade do |t|
    t.bigint "strategy_id", null: false
    t.boolean "leg_type"
    t.boolean "leg_action"
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
  end

  add_foreign_key "option_legs", "strategies"
end
