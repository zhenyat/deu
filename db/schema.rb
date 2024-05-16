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

ActiveRecord::Schema[7.1].define(version: 2024_05_16_191239) do
  create_table "cases", force: :cascade do |t|
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.string "abbr_de", null: false
    t.string "abbr_en", null: false
    t.string "abbr_ru", null: false
    t.string "questions_de", null: false
    t.string "questions_en", null: false
    t.string "questions_ru", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.index ["abbr_de"], name: "index_cases_on_abbr_de", unique: true
    t.index ["abbr_en"], name: "index_cases_on_abbr_en", unique: true
    t.index ["abbr_ru"], name: "index_cases_on_abbr_ru", unique: true
    t.index ["de"], name: "index_cases_on_de", unique: true
    t.index ["en"], name: "index_cases_on_en", unique: true
    t.index ["questions_de"], name: "index_cases_on_questions_de", unique: true
    t.index ["questions_en"], name: "index_cases_on_questions_en", unique: true
    t.index ["questions_ru"], name: "index_cases_on_questions_ru", unique: true
    t.index ["ru"], name: "index_cases_on_ru", unique: true
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

end
