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

ActiveRecord::Schema.define(version: 20160411030536) do

  create_table "castings", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "payment_type"
    t.string   "ubication"
    t.date     "casting_end"
    t.string   "video"
    t.string   "images"
    t.integer  "member_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "member_type"
    t.string   "display_name"
    t.integer  "phone"
    t.date     "date_of_birth"
    t.string   "city"
    t.string   "about"
    t.string   "gender"
    t.integer  "ethnicity_id"
    t.integer  "categories_id"
    t.integer  "hair_id"
    t.integer  "eyes_id"
    t.integer  "height"
    t.integer  "bust"
    t.integer  "waist"
    t.integer  "hips"
    t.integer  "shoes"
    t.integer  "disciplines_id"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true

end
