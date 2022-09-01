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

ActiveRecord::Schema[7.0].define(version: 2022_08_18_155623) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anamnese_answers", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "anamnese_id", null: false
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anamnese_id"], name: "index_anamnese_answers_on_anamnese_id"
    t.index ["patient_id"], name: "index_anamnese_answers_on_patient_id"
  end

  create_table "anamneses", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_anamneses_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "number"
    t.string "city"
    t.string "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "anamnese_answers", "anamneses"
  add_foreign_key "anamnese_answers", "patients"
  add_foreign_key "anamneses", "patients"
end
