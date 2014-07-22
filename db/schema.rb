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

ActiveRecord::Schema.define(version: 20140722083842) do

  create_table "analysis_group_gadgets", force: true do |t|
    t.integer "gadgets_id"
    t.integer "analysis_groups_id"
  end

  add_index "analysis_group_gadgets", ["analysis_groups_id"], name: "index_analysis_group_gadgets_on_analysis_groups_id", using: :btree
  add_index "analysis_group_gadgets", ["gadgets_id"], name: "index_analysis_group_gadgets_on_gadgets_id", using: :btree

  create_table "analysis_groups", force: true do |t|
    t.string "name"
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
    t.string  "name"
    t.integer "gadgets_id"
  end

  add_index "currencies", ["gadgets_id"], name: "index_currencies_on_gadgets_id", using: :btree

  create_table "gadgets", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "method_or_gadget"
    t.string   "useful_for"
    t.string   "analysis_group"
    t.string   "type_of_method_or_gadget"
    t.text     "gadget_description"
    t.decimal  "cost",                            precision: 10, scale: 0
    t.string   "currencies"
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
    t.string   "explanation_by_nrc"
    t.string   "name_by_evaluator"
    t.string   "comments_suggestion_of_evalutor"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gadgets_qua_area_ints", force: true do |t|
    t.integer "qualify_area_of_intrests_id"
    t.integer "gadgets_id"
  end

  add_index "gadgets_qua_area_ints", ["gadgets_id"], name: "index_gadgets_qua_area_ints_on_gadgets_id", using: :btree
  add_index "gadgets_qua_area_ints", ["qualify_area_of_intrests_id"], name: "index_gadgets_qua_area_ints_on_qualify_area_of_intrests_id", using: :btree

  create_table "gadgets_type_of_methods", force: true do |t|
    t.integer "gadgets_id"
    t.integer "type_of_methods_id"
  end

  add_index "gadgets_type_of_methods", ["gadgets_id"], name: "index_gadgets_type_of_methods_on_gadgets_id", using: :btree
  add_index "gadgets_type_of_methods", ["type_of_methods_id"], name: "index_gadgets_type_of_methods_on_type_of_methods_id", using: :btree

  create_table "qualify_area_of_intrests", force: true do |t|
    t.string "name"
  end

  create_table "type_of_methods", force: true do |t|
    t.string "name"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "institution"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
