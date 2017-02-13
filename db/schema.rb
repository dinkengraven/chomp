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

ActiveRecord::Schema.define(version: 20170212184524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aisles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.integer  "aisle_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aisle_id"], name: "index_foods_on_aisle_id", using: :btree
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer  "food_id"
    t.integer  "recipe_id"
    t.float    "amount"
    t.string   "unit"
    t.string   "instructions"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["food_id"], name: "index_ingredients_on_food_id", using: :btree
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "recipes", force: :cascade do |t|
    t.integer  "creator_id"
    t.string   "source_name"
    t.string   "source_url"
    t.text     "description"
    t.text     "steps"
    t.integer  "yield"
    t.integer  "total_time"
    t.integer  "prep_time"
    t.integer  "cook_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "password_digest"
    t.string   "email"
    t.string   "username"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "foods", "aisles"
  add_foreign_key "ingredients", "foods"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "profiles", "users"
end
