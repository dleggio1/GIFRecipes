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

ActiveRecord::Schema.define(version: 20161127031727) do

  create_table "gifs", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "tags"
    t.text     "recipe"
  end

  create_table "simple_hashtag_hashtaggings", force: :cascade do |t|
    t.integer "hashtag_id"
    t.string  "hashtaggable_type"
    t.integer "hashtaggable_id"
    t.index ["hashtag_id"], name: "index_simple_hashtag_hashtaggings_on_hashtag_id"
    t.index ["hashtaggable_id", "hashtaggable_type"], name: "index_hashtaggings_hashtaggable_id_hashtaggable_type"
  end

  create_table "simple_hashtag_hashtags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name"], name: "index_simple_hashtag_hashtags_on_name"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "gif_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gif_id"], name: "index_taggings_on_gif_id"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
