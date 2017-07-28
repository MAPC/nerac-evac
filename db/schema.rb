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

ActiveRecord::Schema.define(version: 20170728193919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calculations", force: :cascade do |t|
    t.integer  "passengers_mobile",            default: 0
    t.integer  "passengers_injured_bedridden", default: 0
    t.integer  "passengers_wheelchair_bound",  default: 0
    t.float    "shelter_distance"
    t.float    "target_completion_time"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.boolean  "distance_in_time"
    t.integer  "passengers_pet",               default: 0
    t.integer  "bus_capacity",                 default: 30
    t.integer  "ambulance_capacity",           default: 1
    t.integer  "paratransit_capacity",         default: 10
    t.integer  "pet_capacity",                 default: 5
    t.integer  "bus_load_time",                default: 1
    t.integer  "ambulance_load_time",          default: 5
    t.integer  "paratransit_load_time",        default: 3
    t.integer  "pet_load_time",                default: 2
    t.integer  "vehicle_speed_mph",            default: 30
  end

end
