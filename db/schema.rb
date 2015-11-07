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

ActiveRecord::Schema.define(version: 20151104073234) do

  create_table "admin_users", id: false, force: :cascade do |t|
    t.string   "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eval_users", id: false, force: :cascade do |t|
    t.string   "user_id"
    t.string   "pdst_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "original_data_types", id: false, force: :cascade do |t|
    t.string   "odt_id"
    t.string   "schema_info",  default: ""
    t.string   "mapping_info", default: ""
    t.string   "submit_id"
    t.string   "pdst_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "parsing_data_sequence_types", id: false, force: :cascade do |t|
    t.string   "pdst_id"
    t.string   "task_name"
    t.string   "submit_user_id"
    t.string   "season_info"
    t.float    "null_ratio",      default: 0.5
    t.string   "period_info"
    t.integer  "estimate_state"
    t.integer  "total_tuple_num", default: 0
    t.integer  "dup_tuple_num",   default: 0
    t.string   "odt_id"
    t.string   "eval_user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "participates", id: false, force: :cascade do |t|
    t.string   "submit_user_id"
    t.string   "task_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "submit_users", id: false, force: :cascade do |t|
    t.string   "user_id"
    t.integer  "eval_value",     default: 50
    t.string   "participate_id"
    t.string   "submit_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "submits", id: false, force: :cascade do |t|
    t.string   "submit_user_id"
    t.string   "odt_id"
    t.string   "task_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tasks", id: false, force: :cascade do |t|
    t.string   "task_name"
    t.string   "description",            default: ""
    t.integer  "min_upload_period_hour", default: 24
    t.string   "tdt_name"
    t.string   "tdt_schema_info"
    t.string   "participate_id"
    t.string   "submit_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "users", id: false, force: :cascade do |t|
    t.string   "user_id"
    t.string   "login_id"
    t.string   "password"
    t.string   "name"
    t.string   "sex"
    t.string   "address",    default: ""
    t.date     "birthdate"
    t.string   "cellphone"
    t.string   "user_type"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
