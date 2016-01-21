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

ActiveRecord::Schema.define(version: 20160120233104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activity_statuses", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "user_name"
    t.integer  "rank_id"
    t.integer  "activity_status_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "members", ["activity_status_id"], name: "index_members_on_activity_status_id", using: :btree
  add_index "members", ["rank_id"], name: "index_members_on_rank_id", using: :btree

  create_table "participations", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "war_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "participations", ["member_id"], name: "index_participations_on_member_id", using: :btree
  add_index "participations", ["war_id"], name: "index_participations_on_war_id", using: :btree

  create_table "ranks", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer  "participation_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "violations", ["participation_id"], name: "index_violations_on_participation_id", using: :btree
  add_index "violations", ["violation_type_id"], name: "index_violations_on_violation_type_id", using: :btree

  create_table "war_heros", force: :cascade do |t|
    t.integer  "participation_id"
    t.string   "reason"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "war_heros", ["participation_id"], name: "index_war_heros_on_participation_id", using: :btree

  create_table "war_results", force: :cascade do |t|
    t.string   "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "war_zeros", force: :cascade do |t|
    t.integer  "participation_id"
    t.string   "reason"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "war_zeros", ["participation_id"], name: "index_war_zeros_on_participation_id", using: :btree

  create_table "wars", force: :cascade do |t|
    t.integer  "war_result_id"
    t.string   "opponent"
    t.integer  "stars"
    t.float    "destruction"
    t.integer  "opp_stars"
    t.float    "opp_destruction"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "members", "activity_statuses"
  add_foreign_key "members", "ranks"
  add_foreign_key "participations", "members"
  add_foreign_key "participations", "wars"
  add_foreign_key "violations", "participations"
  add_foreign_key "violations", "violation_types"
  add_foreign_key "war_heros", "participations"
  add_foreign_key "war_zeros", "participations"
end
