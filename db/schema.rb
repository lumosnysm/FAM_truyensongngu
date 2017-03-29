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

ActiveRecord::Schema.define(version: 20170327172520) do

  create_table "comments", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci" do |t|
    t.text     "content",   limit: 65535, null: false
    t.datetime "create at",               null: false
    t.integer  "id_user",                 null: false
    t.integer  "id_truyen",               null: false
    t.index ["id_truyen"], name: "id_truyen", using: :btree
    t.index ["id_user"], name: "id_user", using: :btree
  end

  create_table "theloais", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.text     "title",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "truyens", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.text     "name_vn",    limit: 65535
    t.text     "name_en",    limit: 65535
    t.text     "content_vn", limit: 65535
    t.text     "content_en", limit: 65535
    t.string   "image"
    t.integer  "theloai_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["theloai_id"], name: "index_truyens_on_theloai_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "comments", "truyens", column: "id_truyen", name: "comments_ibfk_2"
  add_foreign_key "comments", "users", column: "id_user", name: "comments_ibfk_1"
end
