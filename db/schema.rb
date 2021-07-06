ActiveRecord::Schema.define(version: 20170708190550) do
    create_table "products", force: :cascade do |t|
        t.string   "name"
        t.text     "description"
        t.string   "image"
        t.integer  "price_cents"
        t.integer  "quantity"
        t.datetime "created_at",  null: false
        t.datetime "updated_at",  null: false
        t.integer  "category_id"
      end
end