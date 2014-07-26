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

ActiveRecord::Schema.define(version: 20140726123130) do

  create_table "add_currency_to_gadgets", force: true do |t|
    t.integer "gadget_id"
    t.integer "currency_id"
  end

  create_table "analysis_groups", force: true do |t|
    t.string "name"
  end

  create_table "analysis_groups_gadgets", force: true do |t|
    t.integer "gadget_id"
    t.integer "analysis_group_id"
  end

  create_table "contacts", force: true do |t|
    t.string   "contact_name"
    t.string   "contact_mail"
    t.text     "contact_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "title"
    t.string   "outcome"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "fee",         precision: 5, scale: 2
  end

  create_table "currencies", force: true do |t|
    t.string "name"
  end

  create_table "gadgets", force: true do |t|
    t.string   "title"
    t.string   "name_method_or_gadget"
    t.string   "useful_for"
    t.string   "analysis_group"
    t.string   "type_of_method_or_gadget"
    t.text     "gadget_description"
    t.decimal  "cost",                            precision: 10, scale: 0
    t.string   "currencys_id"
    t.string   "tool_users"
    t.string   "gadget_website"
    t.string   "gadget_brochure"
    t.string   "companay_name"
    t.text     "company_description"
    t.string   "companay_website"
    t.string   "gadget_scientific"
    t.string   "technology_used"
    t.text     "scientific_descrition"
    t.string   "scientfic_papers"
    t.string   "useful_for_field"
    t.string   "qualfiy_area_interest"
    t.string   "useful_which_field_lab"
    t.string   "explanation_by_evaluator"
    t.string   "name"
    t.string   "explanation_by_nrc"
    t.string   "name_by_evaluator"
    t.string   "comments_suggestion_of_evalutor"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "currency_id"
  end

  create_table "gadgets_qualify_area_of_interests", force: true do |t|
    t.integer "gadget_id"
    t.integer "qualify_area_of_interest_id"
  end

  create_table "gadgets_type_of_methods", force: true do |t|
    t.integer "type_of_method_id"
    t.integer "gadget_id"
  end

  create_table "musics", force: true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "audio_file_name"
    t.string   "audio_content_type"
    t.integer  "audio_file_size"
    t.datetime "audio_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qualify_area_of_interests", force: true do |t|
    t.string "name"
  end

  create_table "type_of_methods", force: true do |t|
    t.string "name"
  end

  create_table "users", force: true do |t|
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "institution"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
