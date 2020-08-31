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

ActiveRecord::Schema.define(version: 2020_08_26_212641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyers", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "store"
    t.string "title"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "collections", force: :cascade do |t|
    t.bigint "designer_id", null: false
    t.bigint "season_id", null: false
    t.string "name"
    t.string "inspo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["designer_id"], name: "index_collections_on_designer_id"
    t.index ["season_id"], name: "index_collections_on_season_id"
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "start"
    t.string "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "designers", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "img"
    t.text "bio"
    t.string "instagram"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_designers_on_category_id"
  end

  create_table "favorite_designers", force: :cascade do |t|
    t.bigint "buyer_id", null: false
    t.bigint "designer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_id"], name: "index_favorite_designers_on_buyer_id"
    t.index ["designer_id"], name: "index_favorite_designers_on_designer_id"
  end

  create_table "images", force: :cascade do |t|
    t.bigint "style_id", null: false
    t.string "img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["style_id"], name: "index_images_on_style_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "selected_styles", force: :cascade do |t|
    t.bigint "buyer_id", null: false
    t.bigint "style_id", null: false
    t.bigint "favorite_designer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_id"], name: "index_selected_styles_on_buyer_id"
    t.index ["favorite_designer_id"], name: "index_selected_styles_on_favorite_designer_id"
    t.index ["style_id"], name: "index_selected_styles_on_style_id"
  end

  create_table "style_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "styles", force: :cascade do |t|
    t.bigint "collection_id", null: false
    t.bigint "delivery_id", null: false
    t.bigint "style_category_id", null: false
    t.string "upc"
    t.string "style_name"
    t.integer "style_number"
    t.string "color"
    t.string "size"
    t.string "fabric"
    t.integer "wholesale"
    t.integer "retail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collection_id"], name: "index_styles_on_collection_id"
    t.index ["delivery_id"], name: "index_styles_on_delivery_id"
    t.index ["style_category_id"], name: "index_styles_on_style_category_id"
  end

  add_foreign_key "collections", "designers"
  add_foreign_key "collections", "seasons"
  add_foreign_key "designers", "categories"
  add_foreign_key "favorite_designers", "buyers"
  add_foreign_key "favorite_designers", "designers"
  add_foreign_key "images", "styles"
  add_foreign_key "selected_styles", "buyers"
  add_foreign_key "selected_styles", "favorite_designers"
  add_foreign_key "selected_styles", "styles"
  add_foreign_key "styles", "collections"
  add_foreign_key "styles", "deliveries"
  add_foreign_key "styles", "style_categories"
end
