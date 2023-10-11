ActiveRecord::Schema[7.0].define(version: 2023_10_11_152633) do
  create_table "links", force: :cascade do |t|
    t.string "url"
    t.string "short_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

    t.index ["short_url"], name: "index_links_on_short_url"
  end
end
