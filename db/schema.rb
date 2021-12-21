# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_28_043304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "routes", force: :cascade do |t|
    t.integer "dt"
    t.float "lat1"
    t.float "long1"
    t.float "lat2"
    t.float "long2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weathers", force: :cascade do |t|
    t.integer "dt"
    t.float "temp1"
    t.float "wind_speed1"
    t.float "wind_deg1"
    t.float "precip_intensity1"
    t.float "dew_point1"
    t.integer "road_state1"
    t.float "road_temp1"
    t.string "alert1"
    t.string "event1"
    t.integer "event_level1"
    t.float "temp2"
    t.float "wind_speed2"
    t.float "wind_deg2"
    t.float "precip_intensity2"
    t.float "dew_point2"
    t.integer "road_state2"
    t.float "road_temp2"
    t.string "alert2"
    t.string "event2"
    t.integer "event_level2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
