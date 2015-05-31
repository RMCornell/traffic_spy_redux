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

ActiveRecord::Schema.define(version: 20150531082707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_names", force: :cascade do |t|
    t.text     "event_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ips", force: :cascade do |t|
    t.text     "ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parameters", force: :cascade do |t|
    t.text     "parameters"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payloads", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "payload"
    t.integer  "url_id"
    t.integer  "requested_at_id"
    t.integer  "responded_in_id"
    t.integer  "referred_by_id"
    t.integer  "request_type_id"
    t.integer  "parameters_id"
    t.integer  "event_name_id"
    t.integer  "user_agent_id"
    t.integer  "resolution_width_id"
    t.integer  "resolution_height_id"
    t.integer  "ip_id"
    t.text     "sha"
  end

  create_table "referred_bies", force: :cascade do |t|
    t.text     "referred_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "request_types", force: :cascade do |t|
    t.text     "request_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requested_ats", force: :cascade do |t|
    t.text     "requested_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resolution_heights", force: :cascade do |t|
    t.text     "resolution_height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resolution_widths", force: :cascade do |t|
    t.text     "resolution_width"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "responded_ins", force: :cascade do |t|
    t.text     "responded_in"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", force: :cascade do |t|
    t.text "identifier"
    t.text "root_url"
    t.text "timestamps"
  end

  create_table "urls", force: :cascade do |t|
    t.text     "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_agents", force: :cascade do |t|
    t.text     "user_agent"
    t.text     "browser"
    t.text     "operating_system"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
