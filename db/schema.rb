# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151006142255) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "username",        limit: 255, null: false
    t.string   "password_digest", limit: 255, null: false
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "admin_users", ["username"], name: "index_admin_users_on_username", using: :btree

  create_table "admin_users_brands", force: :cascade do |t|
    t.integer "admin_user_id", limit: 4
    t.integer "brand_id",      limit: 4
  end

  add_index "admin_users_brands", ["admin_user_id", "brand_id"], name: "index_admin_users_brands_on_admin_user_id_and_brand_id", using: :btree

  create_table "brands", force: :cascade do |t|
    t.string   "name",              limit: 255,                   null: false
    t.integer  "position",          limit: 4
    t.boolean  "visible",           limit: 1,     default: false
    t.string   "permalink",         limit: 255,                   null: false
    t.integer  "counter",           limit: 4,     default: 0
    t.text     "description",       limit: 65535
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "icon_file_name",    limit: 255
    t.string   "icon_content_type", limit: 255
    t.integer  "icon_file_size",    limit: 4
    t.datetime "icon_updated_at"
  end

  add_index "brands", ["permalink"], name: "index_brands_on_permalink", using: :btree

  create_table "cars", force: :cascade do |t|
    t.integer  "model_id",           limit: 4
    t.string   "name",               limit: 255,               null: false
    t.boolean  "visible",            limit: 1
    t.string   "permalink",          limit: 255,               null: false
    t.integer  "counter",            limit: 4,     default: 0
    t.text     "description",        limit: 65535
    t.integer  "position",           limit: 4
    t.integer  "year",               limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  add_index "cars", ["model_id"], name: "index_cars_on_model_id", using: :btree
  add_index "cars", ["permalink"], name: "index_cars_on_permalink", using: :btree

  create_table "models", force: :cascade do |t|
    t.integer  "brand_id",            limit: 4
    t.string   "name",                limit: 255,                   null: false
    t.integer  "position",            limit: 4
    t.boolean  "visible",             limit: 1,     default: false
    t.string   "permalink",           limit: 255,                   null: false
    t.integer  "counter",             limit: 4,     default: 0
    t.text     "description",         limit: 65535
    t.integer  "year",                limit: 4
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
  end

  add_index "models", ["brand_id"], name: "index_models_on_brand_id", using: :btree
  add_index "models", ["permalink"], name: "index_models_on_permalink", using: :btree

end
