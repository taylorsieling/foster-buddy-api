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

ActiveRecord::Schema[7.0].define(version: 2023_09_22_005932) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "street_one"
    t.string "street_two"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.integer "litter_id"
    t.integer "foster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["foster_id"], name: "index_addresses_on_foster_id"
    t.index ["litter_id"], name: "index_addresses_on_litter_id"
  end

  create_table "alteration_records", force: :cascade do |t|
    t.string "type"
    t.date "date"
    t.string "clinic"
    t.string "veterinarian"
    t.boolean "altered_in_care"
    t.integer "foster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["foster_id"], name: "index_alteration_records_on_foster_id"
  end

  create_table "fosters", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "sex"
    t.date "date_of_birth"
    t.string "breed"
    t.string "primary_color"
    t.string "secondary_color"
    t.string "pattern"
    t.string "altered_status"
    t.string "adoption_status"
    t.text "biography"
    t.string "portrait_url"
    t.integer "litter_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["litter_id"], name: "index_fosters_on_litter_id"
    t.index ["user_id"], name: "index_fosters_on_user_id"
  end

  create_table "litters", force: :cascade do |t|
    t.string "theme"
    t.datetime "intake_date"
    t.datetime "intake_time"
    t.string "intake_type"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_litters_on_user_id"
  end

  create_table "microchip_records", force: :cascade do |t|
    t.integer "chip_number"
    t.date "date_placed"
    t.string "brand"
    t.string "placed_by"
    t.boolean "placed_in_care"
    t.integer "foster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["foster_id"], name: "index_microchip_records_on_foster_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "fosters"
  add_foreign_key "addresses", "litters"
  add_foreign_key "alteration_records", "fosters"
  add_foreign_key "fosters", "litters"
  add_foreign_key "fosters", "users"
  add_foreign_key "litters", "users"
  add_foreign_key "microchip_records", "fosters"
end
