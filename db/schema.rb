# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_24_075753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "directors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "photo"
    t.string "bio_short"
    t.string "bio_long"
    t.string "birth_year"
    t.string "death_year"
    t.string "bio_source"
    t.string "useful_links", default: [], array: true
  end

  create_table "directors_docs", id: false, force: :cascade do |t|
    t.bigint "director_id", null: false
    t.bigint "doc_id", null: false
    t.index ["director_id", "doc_id"], name: "index_directors_docs_on_director_id_and_doc_id", unique: true
    t.index ["doc_id", "director_id"], name: "index_directors_docs_on_doc_id_and_director_id", unique: true
  end

  create_table "docs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "chinese_name"
    t.string "year"
    t.string "duration"
    t.string "poster"
    t.string "doc_text_short"
    t.string "doc_text_long"
    t.string "awards", default: [], array: true
    t.string "trailer_link"
    t.string "useful_links", default: [], array: true
    t.string "doc_text_source"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable"
  end

end
