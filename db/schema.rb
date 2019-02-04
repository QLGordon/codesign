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

ActiveRecord::Schema.define(version: 2019_02_04_085841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "color_id"
    t.bigint "font_id"
    t.bigint "svg_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id"], name: "index_clients_on_color_id"
    t.index ["font_id"], name: "index_clients_on_font_id"
    t.index ["svg_id"], name: "index_clients_on_svg_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.integer "red"
    t.integer "green"
    t.integer "blue"
    t.integer "alpha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fonts", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.string "font"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "client_id"
    t.bigint "category_id"
    t.bigint "color_id"
    t.bigint "font_id"
    t.bigint "svg_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_projects_on_category_id"
    t.index ["client_id"], name: "index_projects_on_client_id"
    t.index ["color_id"], name: "index_projects_on_color_id"
    t.index ["font_id"], name: "index_projects_on_font_id"
    t.index ["svg_id"], name: "index_projects_on_svg_id"
  end

  create_table "svgs", force: :cascade do |t|
    t.string "name"
    t.text "svg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clients", "colors"
  add_foreign_key "clients", "fonts"
  add_foreign_key "clients", "svgs"
  add_foreign_key "projects", "categories"
  add_foreign_key "projects", "clients"
  add_foreign_key "projects", "colors"
  add_foreign_key "projects", "fonts"
  add_foreign_key "projects", "svgs"
end
