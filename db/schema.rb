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

ActiveRecord::Schema.define(version: 20171206085729) do

  create_table "clients", force: :cascade do |t|
    t.string "nominative"
    t.string "email"
    t.string "via"
    t.integer "civico"
    t.integer "cap"
    t.string "citta"
    t.string "provincia"
    t.string "stato"
    t.string "numero"
    t.string "partita_iva"
    t.string "codice_fiscale"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "client_id"
    t.integer "number"
    t.date "date"
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_invoices_on_client_id"
  end

  create_table "performances", force: :cascade do |t|
    t.integer "client_id"
    t.text "description"
    t.date "date"
    t.integer "duration"
    t.boolean "invoiced"
    t.integer "rate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_performances_on_client_id"
    t.index ["rate_id"], name: "index_performances_on_rate_id"
  end

  create_table "rates", force: :cascade do |t|
    t.float "hourly_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
