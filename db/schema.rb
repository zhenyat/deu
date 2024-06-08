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

ActiveRecord::Schema[7.1].define(version: 2024_05_29_130159) do
  create_table "articles", force: :cascade do |t|
    t.integer "part_of_speech_id", null: false
    t.integer "gcase_id", null: false
    t.integer "number_id", null: false
    t.integer "gender_id", null: false
    t.integer "kind", limit: 1, default: 0, null: false
    t.string "de", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gcase_id"], name: "index_articles_on_gcase_id"
    t.index ["gender_id"], name: "index_articles_on_gender_id"
    t.index ["number_id"], name: "index_articles_on_number_id"
    t.index ["part_of_speech_id"], name: "index_articles_on_part_of_speech_id"
  end

  create_table "gcases", force: :cascade do |t|
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.string "abbr_de", null: false
    t.string "abbr_en", null: false
    t.string "abbr_ru", null: false
    t.string "questions_de", null: false
    t.string "questions_en", null: false
    t.string "questions_ru", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["abbr_de"], name: "index_gcases_on_abbr_de", unique: true
    t.index ["abbr_en"], name: "index_gcases_on_abbr_en", unique: true
    t.index ["abbr_ru"], name: "index_gcases_on_abbr_ru", unique: true
    t.index ["de"], name: "index_gcases_on_de", unique: true
    t.index ["en"], name: "index_gcases_on_en", unique: true
    t.index ["questions_de"], name: "index_gcases_on_questions_de", unique: true
    t.index ["questions_en"], name: "index_gcases_on_questions_en", unique: true
    t.index ["questions_ru"], name: "index_gcases_on_questions_ru", unique: true
    t.index ["ru"], name: "index_gcases_on_ru", unique: true
  end

  create_table "genders", force: :cascade do |t|
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.string "abbr_de", null: false
    t.string "abbr_en", null: false
    t.string "abbr_ru", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["abbr_de"], name: "index_genders_on_abbr_de", unique: true
    t.index ["abbr_en"], name: "index_genders_on_abbr_en", unique: true
    t.index ["abbr_ru"], name: "index_genders_on_abbr_ru", unique: true
    t.index ["de"], name: "index_genders_on_de", unique: true
    t.index ["en"], name: "index_genders_on_en", unique: true
    t.index ["ru"], name: "index_genders_on_ru", unique: true
  end

  create_table "noun_declensions", force: :cascade do |t|
    t.integer "noun_id", null: false
    t.integer "gcase_id", null: false
    t.string "singular", null: false
    t.string "plural", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gcase_id"], name: "index_noun_declensions_on_gcase_id"
    t.index ["noun_id"], name: "index_noun_declensions_on_noun_id"
  end

  create_table "nouns", force: :cascade do |t|
    t.integer "part_of_speech_id", null: false
    t.integer "gender_id", null: false
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.string "transcription"
    t.integer "ending", limit: 1, default: 0, null: false
    t.integer "level", limit: 1, default: 0, null: false
    t.integer "kind", limit: 1, default: 0, null: false
    t.integer "sg_suffix", limit: 1, default: 0, null: false
    t.integer "pl_suffix", limit: 1, default: 0, null: false
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gender_id"], name: "index_nouns_on_gender_id"
    t.index ["part_of_speech_id"], name: "index_nouns_on_part_of_speech_id"
  end

  create_table "numbers", force: :cascade do |t|
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.string "abbr_de", null: false
    t.string "abbr_en", null: false
    t.string "abbr_ru", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["abbr_de"], name: "index_numbers_on_abbr_de", unique: true
    t.index ["abbr_en"], name: "index_numbers_on_abbr_en", unique: true
    t.index ["abbr_ru"], name: "index_numbers_on_abbr_ru", unique: true
    t.index ["de"], name: "index_numbers_on_de", unique: true
    t.index ["en"], name: "index_numbers_on_en", unique: true
    t.index ["ru"], name: "index_numbers_on_ru", unique: true
  end

  create_table "parts_of_speech", force: :cascade do |t|
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.text "cmt_de"
    t.text "cmt_en"
    t.text "cmt_ru"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["de"], name: "index_parts_of_speech_on_de", unique: true
    t.index ["en"], name: "index_parts_of_speech_on_en", unique: true
    t.index ["ru"], name: "index_parts_of_speech_on_ru", unique: true
  end

  create_table "persons", force: :cascade do |t|
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.string "abbr_de", null: false
    t.string "abbr_en", null: false
    t.string "abbr_ru", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["abbr_de"], name: "index_persons_on_abbr_de", unique: true
    t.index ["abbr_en"], name: "index_persons_on_abbr_en", unique: true
    t.index ["abbr_ru"], name: "index_persons_on_abbr_ru", unique: true
    t.index ["de"], name: "index_persons_on_de", unique: true
    t.index ["en"], name: "index_persons_on_en", unique: true
    t.index ["ru"], name: "index_persons_on_ru", unique: true
  end

  add_foreign_key "articles", "gcases"
  add_foreign_key "articles", "genders"
  add_foreign_key "articles", "numbers"
  add_foreign_key "articles", "parts_of_speech"
  add_foreign_key "noun_declensions", "gcases"
  add_foreign_key "noun_declensions", "nouns"
  add_foreign_key "nouns", "genders"
  add_foreign_key "nouns", "parts_of_speech"
end
