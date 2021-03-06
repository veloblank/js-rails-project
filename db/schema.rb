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

ActiveRecord::Schema.define(version: 20190708220109) do

  create_table "boards", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pick_histories", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "props", force: :cascade do |t|
    t.string   "title"
    t.date     "date"
    t.datetime "start_time"
    t.string   "sport"
    t.string   "home_team"
    t.string   "away_team"
    t.string   "espn_game_identifier"
    t.boolean  "locked",               default: false
    t.boolean  "home_team_won"
    t.boolean  "away_team_won"
    t.boolean  "scored_by_admin",      default: false
    t.integer  "board_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "user_picks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "prop_id"
    t.boolean  "locked",          default: false
    t.boolean  "scored",          default: false
    t.boolean  "side_won"
    t.string   "side"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "pick_history_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "current_streak",  default: 0
    t.integer  "best_streak",     default: 0
    t.boolean  "admin",           default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
