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

ActiveRecord::Schema.define(version: 20180319193627) do

  create_table "cards", force: :cascade do |t|
    t.string "pack_code"
    t.string "pack_name"
    t.string "type_code"
    t.string "type_name"
    t.string "faction_code"
    t.string "faction_name"
    t.integer "position"
    t.string "name"
    t.integer "cost"
    t.string "text"
    t.integer "income"
    t.integer "initiative"
    t.integer "claim"
    t.integer "reserve"
    t.integer "deck_limit"
    t.integer "strength"
    t.string "traits"
    t.string "flavor"
    t.string "illustrator"
    t.boolean "is_unique"
    t.boolean "is_loyal"
    t.boolean "is_military"
    t.boolean "is_intrigue"
    t.boolean "is_power"
    t.boolean "is_multiple"
    t.string "image_url"
    t.string "label"
    t.integer "ci"
    t.integer "si"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
