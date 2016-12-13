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

ActiveRecord::Schema.define(version: 20161213100908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chat_messages", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "chat_session_id"
    t.string   "content"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["chat_session_id"], name: "index_chat_messages_on_chat_session_id", using: :btree
    t.index ["sender_id"], name: "index_chat_messages_on_sender_id", using: :btree
  end

  create_table "chat_sessions", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "request_id"
    t.integer  "patient_id"
    t.boolean  "active",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["doctor_id"], name: "index_chat_sessions_on_doctor_id", using: :btree
    t.index ["patient_id"], name: "index_chat_sessions_on_patient_id", using: :btree
    t.index ["request_id"], name: "index_chat_sessions_on_request_id", using: :btree
  end

  create_table "diagnoses", force: :cascade do |t|
    t.datetime "devlivery_date"
    t.string   "status"
    t.string   "description"
    t.integer  "request_id"
    t.integer  "pharmacy_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["pharmacy_id"], name: "index_diagnoses_on_pharmacy_id", using: :btree
    t.index ["request_id"], name: "index_diagnoses_on_request_id", using: :btree
  end

  create_table "pharmacies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_pharmacies_on_user_id", using: :btree
  end

  create_table "requests", force: :cascade do |t|
    t.string   "description"
    t.string   "status",      default: "unapproved"
    t.string   "urgency"
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.integer  "category_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["category_id"], name: "index_requests_on_category_id", using: :btree
    t.index ["doctor_id"], name: "index_requests_on_doctor_id", using: :btree
    t.index ["patient_id"], name: "index_requests_on_patient_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "skype_username"
    t.string   "role"
    t.string   "status"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "description"
    t.string   "photo"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "admin",                  default: false, null: false
    t.string   "category"
    t.string   "specialisation"
    t.boolean  "approved"
    t.string   "document"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "chat_messages", "chat_sessions"
  add_foreign_key "diagnoses", "pharmacies"
  add_foreign_key "diagnoses", "requests"
  add_foreign_key "pharmacies", "users"
  add_foreign_key "requests", "categories"
end
