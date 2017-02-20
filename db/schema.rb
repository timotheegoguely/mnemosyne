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

ActiveRecord::Schema.define(version: 20170220172612) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diploma_subcategories", force: :cascade do |t|
    t.integer  "diploma_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diploma_id"], name: "index_diploma_subcategories_on_diploma_id", using: :btree
  end

  create_table "diplomas", force: :cascade do |t|
    t.string   "name"
    t.string   "degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_diplomas", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "diploma_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diploma_id"], name: "index_school_diplomas_on_diploma_id", using: :btree
    t.index ["school_id"], name: "index_school_diplomas_on_school_id", using: :btree
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "acronym"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "zipcode"
    t.string   "city"
    t.string   "country"
    t.string   "website"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "theses", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.date     "year"
    t.string   "resume"
    t.string   "license"
    t.string   "link"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_theses_on_user_id", using: :btree
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
    t.string   "first_name"
    t.string   "last_name"
    t.text     "bio"
    t.date     "birthdate"
    t.string   "website"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "diploma_subcategories", "diplomas"
  add_foreign_key "school_diplomas", "diplomas"
  add_foreign_key "school_diplomas", "schools"
  add_foreign_key "theses", "users"
end
