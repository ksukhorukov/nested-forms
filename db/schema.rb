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

ActiveRecord::Schema.define(version: 20171215092613) do

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "search_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["search_item_id"], name: "index_products_on_search_item_id"
  end

  create_table "search_categories", force: :cascade do |t|
    t.string "title"
  end

  create_table "search_containers", force: :cascade do |t|
    t.string "title"
    t.integer "search_category_id"
    t.index ["search_category_id"], name: "index_search_containers_on_search_category_id"
  end

  create_table "search_items", force: :cascade do |t|
    t.string "title"
    t.integer "search_container_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_search_items_on_product_id"
    t.index ["search_container_id"], name: "index_search_items_on_search_container_id"
  end

end
