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

ActiveRecord::Schema.define(version: 20180421165853) do

  create_table "editors", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "display_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_editors_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "moment"
    t.string "location"
    t.text "description"
    t.integer "microcosm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer "microcosm_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["microcosm_id"], name: "index_members_on_microcosm_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "microcosm_changesets", force: :cascade do |t|
    t.integer "microcosm_id"
    t.integer "changeset_id", limit: 8
    t.integer "review_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", limit: 8, null: false
    t.bigint "editor_id", null: false
    t.index ["changeset_id"], name: "index_microcosm_changesets_on_changeset_id"
    t.index ["microcosm_id"], name: "index_microcosm_changesets_on_microcosm_id"
  end

  create_table "microcosms", force: :cascade do |t|
    t.string "name", null: false
    t.string "key", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "facebook"
    t.string "twitter"
    t.decimal "lat", null: false
    t.decimal "lon", null: false
    t.integer "min_lat", null: false
    t.integer "max_lat", null: false
    t.integer "min_lon", null: false
    t.integer "max_lon", null: false
    t.integer "members_count", default: 0
    t.text "description"
    t.index ["key"], name: "index_microcosms_on_key", unique: true
  end

  create_table "organizers", force: :cascade do |t|
    t.integer "microcosm_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["microcosm_id"], name: "index_organizers_on_microcosm_id"
    t.index ["user_id"], name: "index_organizers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
  end

end
