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

ActiveRecord::Schema.define(version: 2019_09_17_000248) do

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.string "image_uid"
    t.string "image_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vehicle_id"
    t.index ["image"], name: "index_photos_on_image"
    t.index ["image_name"], name: "index_photos_on_image_name"
    t.index ["vehicle_id"], name: "index_photos_on_vehicle_id"
  end

  create_table "photos_posts", force: :cascade do |t|
    t.integer "photo_id"
    t.integer "vehicle_id"
    t.index ["photo_id"], name: "index_photos_posts_on_photo_id"
    t.index ["vehicle_id"], name: "index_photos_posts_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "year"
    t.string "make"
    t.string "model"
    t.integer "price"
    t.boolean "new"
    t.integer "mileage"
    t.string "transmission"
    t.string "engine"
    t.string "drivetrain"
    t.string "vin"
    t.string "fuel_type"
    t.string "body_style"
    t.string "ext_color"
    t.string "int_color"
    t.integer "mpg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "photos", "vehicles"
end
