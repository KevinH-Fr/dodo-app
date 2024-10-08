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

ActiveRecord::Schema[7.2].define(version: 2024_09_19_111805) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "enfants", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "prenom"
    t.date "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_enfants_on_user_id"
  end

  create_table "produits", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.integer "prix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questionnaire_sommeils", force: :cascade do |t|
    t.string "email"
    t.string "telephone"
    t.string "adresse"
    t.string "pere"
    t.string "mere"
    t.string "enfant"
    t.integer "poids"
    t.boolean "freres_soeurs"
    t.boolean "rituel"
    t.integer "duree_rituel"
    t.string "lieu_nuit"
    t.text "objectif"
    t.integer "produit_id", null: false
    t.integer "niveau_activite"
    t.integer "intensite_reaction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produit_id"], name: "index_questionnaire_sommeils_on_produit_id"
  end

  create_table "suivis", force: :cascade do |t|
    t.integer "enfant_id", null: false
    t.integer "temps_endormissement"
    t.time "heure_endormissement"
    t.date "jour_suivi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enfant_id"], name: "index_suivis_on_enfant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.string "mail"
    t.string "auth0_sub"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "enfants", "users"
  add_foreign_key "questionnaire_sommeils", "produits"
  add_foreign_key "suivis", "enfants"
end
