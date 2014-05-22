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

ActiveRecord::Schema.define(version: 20140520011834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string "cname"
    t.string "name"
    t.string "position"
    t.string "title"
    t.string "hashed_password"
    t.string "salt_password"
    t.string "email"
  end

  create_table "countries", force: true do |t|
    t.string  "name"
    t.string  "url"
    t.integer "total_oil"
    t.integer "oil_export"
    t.integer "refinery"
    t.integer "reserves"
    t.integer "corruption"
    t.string  "description"
    t.string  "minerals"
  end

  create_table "minefields", force: true do |t|
    t.string  "name"
    t.string  "url"
    t.string  "type"
    t.integer "country_id"
    t.string  "kind"
    t.integer "output"
    t.string  "description"
    t.string  "oil_reserves"
  end

  create_table "projects", force: true do |t|
    t.string  "name"
    t.integer "company_id"
    t.integer "country_id"
    t.integer "minefield_id"
    t.text    "description"
  end

  create_table "responses", force: true do |t|
    t.integer "company_id"
    t.integer "project_id"
    t.string  "title"
    t.text    "description"
  end

end
