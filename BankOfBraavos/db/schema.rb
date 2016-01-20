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

ActiveRecord::Schema.define(version: 20160119221426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "members", force: :cascade do |t|
    t.string   "user_name"
    t.integer  "rank_id"
    t.integer  "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "members", ["rank_id"], name: "index_members_on_rank_id", using: :btree
  add_index "members", ["status_id"], name: "index_members_on_status_id", using: :btree

  create_table "participants", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "war_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "participants", ["member_id"], name: "index_participants_on_member_id", using: :btree
  add_index "participants", ["war_id"], name: "index_participants_on_war_id", using: :btree

  create_table "ranks", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "violation_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "violations", force: :cascade do |t|
    t.integer  "violation_type_id"
    t.integer  "participant_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "violations", ["participant_id"], name: "index_violations_on_participant_id", using: :btree
  add_index "violations", ["violation_type_id"], name: "index_violations_on_violation_type_id", using: :btree

  create_table "war_heros", force: :cascade do |t|
    t.integer  "participant_id"
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "war_heros", ["participant_id"], name: "index_war_heros_on_participant_id", using: :btree

  create_table "war_zeros", force: :cascade do |t|
    t.integer  "participant_id"
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "war_zeros", ["participant_id"], name: "index_war_zeros_on_participant_id", using: :btree

  create_table "wars", force: :cascade do |t|
    t.string   "opponent"
    t.boolean  "result"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "war_hero_id"
    t.integer  "war_zero_id"
  end

  add_index "wars", ["war_hero_id"], name: "index_wars_on_war_hero_id", using: :btree
  add_index "wars", ["war_zero_id"], name: "index_wars_on_war_zero_id", using: :btree

  add_foreign_key "members", "ranks"
  add_foreign_key "members", "statuses"
  add_foreign_key "participants", "members"
  add_foreign_key "participants", "wars"
  add_foreign_key "violations", "participants"
  add_foreign_key "violations", "violation_types"
  add_foreign_key "war_heros", "participants"
  add_foreign_key "war_zeros", "participants"
  add_foreign_key "wars", "war_heros"
  add_foreign_key "wars", "war_zeros"
end
