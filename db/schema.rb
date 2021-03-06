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

ActiveRecord::Schema.define(version: 2020_03_04_155022) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "genre"
  end

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.string "artist_name"
    t.string "venue_name"
    t.date "event_date"
    t.float "ticketmaster_price_min"
    t.float "seatgeek_price_min"
    t.float "price_difference_min"
    t.float "ticketmaster_price_max"
    t.float "seatgeek_price_max"
    t.float "price_difference_max"
    t.integer "artist_id"
    t.integer "venue_id"
    t.string "test_sg_artist"
    t.string "test_sg_venue"
    t.date "test_sg_date"
  end

  create_table "favorites", force: :cascade do |t|
    t.string "username"
    t.string "event_name"
    t.integer "user_id"
    t.integer "event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
  end

end
