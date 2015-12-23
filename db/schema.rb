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

ActiveRecord::Schema.define(version: 20151201164350) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "username",        limit: 255, null: false
    t.string   "password_digest", limit: 255, null: false
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "adminstrator",    limit: 1
  end

  add_index "admin_users", ["username"], name: "index_admin_users_on_username", using: :btree

  create_table "admin_users_brands", force: :cascade do |t|
    t.integer "admin_user_id", limit: 4
    t.integer "brand_id",      limit: 4
  end

  add_index "admin_users_brands", ["admin_user_id", "brand_id"], name: "index_admin_users_brands_on_admin_user_id_and_brand_id", using: :btree

  create_table "agents", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.boolean  "visible",    limit: 1
    t.integer  "views",      limit: 4
    t.string   "adress",     limit: 255
    t.text     "details",    limit: 65535
    t.string   "phone",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

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

  create_table "car_prices", force: :cascade do |t|
    t.integer  "agent_id",   limit: 4
    t.integer  "car_id",     limit: 4
    t.integer  "price",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "car_prices", ["agent_id", "car_id"], name: "index_car_prices_on_agent_id_and_car_id", using: :btree

  create_table "cars", force: :cascade do |t|
    t.integer  "model_id",                 limit: 4
    t.string   "name",                     limit: 255,               null: false
    t.boolean  "visible",                  limit: 1
    t.string   "permalink",                limit: 255,               null: false
    t.integer  "counter",                  limit: 4,     default: 0
    t.text     "description",              limit: 65535
    t.integer  "position",                 limit: 4
    t.integer  "year",                     limit: 4
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "image_file_name",          limit: 255
    t.string   "image_content_type",       limit: 255
    t.integer  "image_file_size",          limit: 4
    t.datetime "image_updated_at"
    t.string   "motorCapacity",            limit: 255
    t.string   "gearBox",                  limit: 255
    t.string   "numberOfShifts",           limit: 255
    t.string   "carShape",                 limit: 255
    t.string   "cylinders",                limit: 255
    t.string   "sababat",                  limit: 255
    t.string   "fuelType",                 limit: 255
    t.string   "fuelInjectionType",        limit: 255
    t.string   "torque",                   limit: 255
    t.string   "horsePower",               limit: 255
    t.string   "acceleration",             limit: 255
    t.string   "traction",                 limit: 255
    t.string   "doorsNumber",              limit: 255
    t.string   "seatsNumber",              limit: 255
    t.string   "averageFuelConsumption",   limit: 255
    t.string   "tankCapacity",             limit: 255
    t.string   "carHeight",                limit: 255
    t.string   "highestSpeed",             limit: 255
    t.string   "airbagsnumber",            limit: 255
    t.string   "electronicChairs",         limit: 255
    t.string   "ABS",                      limit: 255
    t.string   "EBD",                      limit: 255
    t.string   "ESP",                      limit: 255
    t.string   "stealInzar",               limit: 255
    t.string   "stealImbolizerSystem",     limit: 255
    t.string   "sportWheels",              limit: 255
    t.string   "wheelSize",                limit: 255
    t.string   "fogLights",                limit: 255
    t.string   "electronicClosingMirrors", limit: 255
    t.string   "zinonLights",              limit: 255
    t.string   "lightsSensor",             limit: 255
    t.string   "LEDLights",                limit: 255
    t.string   "spoiler",                  limit: 255
    t.string   "electronicTara",           limit: 255
    t.string   "parkingAssist",            limit: 255
    t.string   "parkinSensor",             limit: 255
    t.string   "backCamera",               limit: 255
    t.string   "engineStart",              limit: 255
    t.string   "smartKey",                 limit: 255
    t.string   "AUX",                      limit: 255
    t.string   "bluetooth",                limit: 255
    t.string   "ChargingSystem",           limit: 255
    t.string   "CD",                       limit: 255
    t.string   "USB",                      limit: 255
    t.string   "electronicCarGlass",       limit: 255
    t.string   "multiTara",                limit: 255
    t.string   "multiKey",                 limit: 255
    t.string   "controlDriverSeatHeight",  limit: 255
    t.string   "leatherTara",              limit: 255
    t.string   "leatherFarsh",             limit: 255
    t.string   "constantSpeedControl",     limit: 255
    t.string   "leatherGearbox",           limit: 255
    t.string   "storagePlacesFront",       limit: 255
    t.string   "storagePlacesBack",        limit: 255
    t.string   "storagePlacesColonswa",    limit: 255
    t.string   "packingBackChairs",        limit: 255
    t.string   "cigaretteLighter",         limit: 255
    t.string   "centerLock",               limit: 255
    t.string   "backSeatsAC",              limit: 255
    t.string   "mas7atSensors",            limit: 255
    t.string   "trunkCapacity",            limit: 255
    t.string   "ta2felType",               limit: 255
    t.string   "turboEngine",              limit: 255
    t.string   "engineType",               limit: 255
    t.string   "gearBoxType",              limit: 255
    t.string   "price",                    limit: 255
    t.string   "price2",                   limit: 255
    t.string   "additional",               limit: 255
    t.string   "additional2",              limit: 255
    t.string   "additional3",              limit: 255
    t.string   "additional4",              limit: 255
    t.string   "additional5",              limit: 255
    t.string   "additional6",              limit: 255
    t.string   "additional7",              limit: 255
    t.string   "additional8",              limit: 255
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

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255, null: false
    t.string   "password_digest", limit: 255, null: false
    t.string   "email",           limit: 255, null: false
    t.string   "name",            limit: 255
    t.integer  "age",             limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "users", ["username", "email"], name: "index_users_on_username_and_email", using: :btree

end
