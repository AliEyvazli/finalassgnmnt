

ActiveRecord::Schema[7.0].define(version: 2023_05_16_033920) do
  create_table "locations", force: :cascade do |t|
    t.string "City_name"
    t.string "Country_name"
    t.date "When"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
