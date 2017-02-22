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

ActiveRecord::Schema.define(version: 20170222100306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diploma_subcategories", force: :cascade do |t|
    t.integer  "diploma_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "subcategory_id"
    t.index ["diploma_id"], name: "index_diploma_subcategories_on_diploma_id", using: :btree
    t.index ["subcategory_id"], name: "index_diploma_subcategories_on_subcategory_id", using: :btree
  end

  create_table "diplomas", force: :cascade do |t|
    t.string   "name"
    t.string   "degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "acronym"
  end

  create_table "school_diplomas", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "diploma_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diploma_id"], name: "index_school_diplomas_on_diploma_id", using: :btree
    t.index ["school_id"], name: "index_school_diplomas_on_school_id", using: :btree
  end

  create_table "school_subcategories", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "subcategory_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["school_id"], name: "index_school_subcategories_on_school_id", using: :btree
    t.index ["subcategory_id"], name: "index_school_subcategories_on_subcategory_id", using: :btree
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

  create_table "subcategories", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_subcategories_on_category_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer  "diploma_id"
    t.integer  "school_id"
    t.string   "document"
    t.index ["diploma_id"], name: "index_theses_on_diploma_id", using: :btree
    t.index ["school_id"], name: "index_theses_on_school_id", using: :btree
    t.index ["user_id"], name: "index_theses_on_user_id", using: :btree
  end

  create_table "thesis_diploma_subcategories", force: :cascade do |t|
    t.integer  "thesis_diploma_id"
    t.integer  "subcategory_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["subcategory_id"], name: "index_thesis_diploma_subcategories_on_subcategory_id", using: :btree
    t.index ["thesis_diploma_id"], name: "index_thesis_diploma_subcategories_on_thesis_diploma_id", using: :btree
  end

  create_table "thesis_diplomas", force: :cascade do |t|
    t.integer  "thesis_id"
    t.integer  "diploma_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diploma_id"], name: "index_thesis_diplomas_on_diploma_id", using: :btree
    t.index ["thesis_id"], name: "index_thesis_diplomas_on_thesis_id", using: :btree
  end

  create_table "thesis_tags", force: :cascade do |t|
    t.integer  "thesis_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_thesis_tags_on_tag_id", using: :btree
    t.index ["thesis_id"], name: "index_thesis_tags_on_thesis_id", using: :btree
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
    t.integer  "school_id"
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["school_id"], name: "index_users_on_school_id", using: :btree
  end

  create_table "votes", force: :cascade do |t|
    t.string   "votable_type"
    t.integer  "votable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree
  end

  add_foreign_key "diploma_subcategories", "diplomas"
  add_foreign_key "diploma_subcategories", "subcategories"
  add_foreign_key "school_diplomas", "diplomas"
  add_foreign_key "school_diplomas", "schools"
  add_foreign_key "school_subcategories", "schools"
  add_foreign_key "school_subcategories", "subcategories"
  add_foreign_key "subcategories", "categories"
  add_foreign_key "theses", "diplomas"
  add_foreign_key "theses", "schools"
  add_foreign_key "theses", "users"
  add_foreign_key "thesis_diploma_subcategories", "subcategories"
  add_foreign_key "thesis_diploma_subcategories", "thesis_diplomas"
  add_foreign_key "thesis_diplomas", "diplomas"
  add_foreign_key "thesis_diplomas", "theses"
  add_foreign_key "thesis_tags", "tags"
  add_foreign_key "thesis_tags", "theses"
  add_foreign_key "users", "schools"
end
