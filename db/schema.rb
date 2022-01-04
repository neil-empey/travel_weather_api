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
    t.string "place1"
    t.string "place2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weathers", force: :cascade do |t|
    t.integer "dt", default: [], array: true
    t.float "temp", default: [], array: true
    t.float "feels", default: [], array: true
    t.float "tempMin", default: [], array: true
    t.float "tempMax", default: [], array: true
    t.float "pressure", default: [], array: true
    t.integer "seaLevel", default: [], array: true
    t.integer "grndLevel", default: [], array: true
    t.integer "humidity", default: [], array: true
    t.string "description", default: [], array: true
    t.integer "clouds", default: [], array: true
    t.float "windSpeed", default: [], array: true
    t.integer "windDir", default: [], array: true
    t.float "prob", default: [], array: true
    t.float "amount", default: [], array: true
    t.integer "timeZone", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
