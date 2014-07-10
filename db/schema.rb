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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140710162139) do

  create_table "assignments", :force => true do |t|
    t.integer "user_id",   :precision => 38, :scale => 0
    t.string  "user_type"
    t.integer "role_id",   :precision => 38, :scale => 0
  end

  add_index "assignments", ["user_id", "user_type"], :name => "i_ass_use_id_use_typ"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "crimes", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.integer  "category_id",               :precision => 38, :scale => 0
    t.string   "operational_area"
    t.string   "meeting_place"
    t.text     "modus_operandi"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.text     "meeting_place_description"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.integer  "organization_id", :precision => 38, :scale => 0
    t.string   "sex"
    t.string   "alias"
    t.text     "record"
    t.string   "rank"
    t.string   "heigh"
    t.string   "complexion"
    t.string   "weight"
    t.string   "recidence"
    t.text     "addictions"
    t.string   "phone"
    t.string   "last_name"
    t.string   "last_name2"
    t.string   "drivers_licence"
    t.string   "state"
    t.string   "ocupation"
    t.string   "contacted_by"
    t.boolean  "peculiarities",   :precision => 1,  :scale => 0
    t.string   "file_reports"
    t.text     "observations"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.boolean  "member",          :precision => 1,  :scale => 0
    t.datetime "birthday"
    t.string   "organization"
  end

  create_table "permissions", :force => true do |t|
    t.integer  "role_id",    :precision => 38, :scale => 0
    t.string   "name"
    t.string   "resource"
    t.string   "condition"
    t.boolean  "cannot",     :precision => 1,  :scale => 0
    t.integer  "priority",   :precision => 38, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "permissions", ["name"], :name => "index_permissions_on_name"
  add_index "permissions", ["role_id", "name"], :name => "i_permissions_role_id_name"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "tattoos", :force => true do |t|
    t.string   "tattoo"
    t.text     "description"
    t.integer  "person_id",   :precision => 38, :scale => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "last_name2"
    t.string   "phone_number"
    t.datetime "created_at",                                                            :null => false
    t.datetime "updated_at",                                                            :null => false
    t.string   "email",                                                 :default => "", :null => false
    t.string   "encrypted_password",                                    :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :precision => 38, :scale => 0, :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  :precision => 1,  :scale => 0
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "i_users_reset_password_token", :unique => true

  create_table "vehicles", :force => true do |t|
    t.string   "brand"
    t.integer  "vehicle_year", :precision => 38, :scale => 0
    t.string   "plate"
    t.string   "model"
    t.string   "color"
    t.boolean  "driver",       :precision => 1,  :scale => 0
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.integer  "person_id",    :precision => 38, :scale => 0
  end

end
