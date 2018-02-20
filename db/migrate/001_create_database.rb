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

class CreateDatabase < ActiveRecord::Migration[5.0]

  def change

    create_table "groups", primary_key: "groupID", id: :string, limit: 12, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "groupName"
      t.text "address", limit: 16777215
      t.index ["groupID"], name: "groupShort_UNIQUE", unique: true
    end

    create_table "hires", primary_key: "hireID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "groupID", limit: 12, null: false
      t.datetime "collect_date"
      t.datetime "return_date"
      t.string "status", limit: 12, default: "New", null: false
      t.float "band", limit: 24, default: 1.0, null: false
      t.integer "userID", null: false
      t.string "reference", null: false
      t.string "invoiceNo", limit: 11
      t.index ["groupID"], name: "fk_hires_groups1_idx"
      t.index ["hireID"], name: "hireID_UNIQUE", unique: true
      t.index ["status"], name: "status"
      t.index ["userID"], name: "userID"
    end

    create_table "loans", primary_key: "loanID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "stockID", null: false
      t.integer "hireID", null: false
      t.string "nameTag", limit: 45
      t.timestamp "dateOut", default: -> { "CURRENT_TIMESTAMP" }, null: false
      t.timestamp "dateBack"
      t.index ["hireID"], name: "fk_transactions_hires1_idx"
      t.index ["hireID"], name: "hireID"
      t.index ["loanID"], name: "transactionID_UNIQUE", unique: true
      t.index ["stockID"], name: "stockID"
    end

    create_table "multi_stock", primary_key: "multiID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "stockID", null: false
      t.integer "new_qty", default: 1, null: false
      t.timestamp "date_added", default: -> { "CURRENT_TIMESTAMP" }, null: false
      t.index ["stockID"], name: "stockID"
    end

    create_table "ordered_sizes", primary_key: ["hireID", "sizeID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "hireID", null: false
      t.string "sizeID", limit: 5, null: false
      t.integer "request", default: 0, null: false
      t.integer "booked", default: 0, null: false
      t.index ["hireID"], name: "hireID"
      t.index ["sizeID"], name: "sizeID_idx"
    end

    create_table "packs", primary_key: ["pack_sizeID", "cont_sizeID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "pack_sizeID", limit: 5, null: false
      t.string "cont_sizeID", limit: 5, null: false
      t.string "pack_styleID", limit: 5, null: false
      t.string "cont_styleID", limit: 5, null: false
      t.integer "pack_qty", limit: 1, default: 1, null: false
      t.index ["cont_sizeID"], name: "fk_pack_cont_sizeID"
    end

    create_table "sizes", primary_key: ["sizeID", "styleID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "sizeID", limit: 5, null: false
      t.string "styleID", limit: 5, null: false
      t.string "size", limit: 45, null: false
      t.index ["sizeID"], name: "sizeID_UNIQUE", unique: true
      t.index ["styleID"], name: "styleID_idx"
    end

    create_table "status", primary_key: "status", id: :string, limit: 12, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "sort_order", null: false
    end

    create_table "stock", primary_key: "stockID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "barcode", limit: 45
      t.string "sizeID", limit: 5, null: false
      t.string "make", limit: 45
      t.string "model", limit: 45
      t.string "cond", limit: 9
      t.string "comments"
      t.timestamp "dateCreated", default: -> { "CURRENT_TIMESTAMP" }, null: false
      t.index ["barcode"], name: "barcode", unique: true
      t.index ["sizeID"], name: "sizeID_idx"
    end

    create_table "styles", primary_key: "styleID", id: :string, limit: 5, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "style", limit: 45, null: false
      t.decimal "bandPrice", precision: 4, scale: 2, null: false
      t.decimal "salePrice", precision: 4, scale: 2, null: false
      t.boolean "sale", default: false, null: false
      t.boolean "browseable", default: true, null: false
      t.boolean "has_stock", default: true, null: false
      t.string "category", limit: 45, null: false
      t.index ["styleID"], name: "styleID_UNIQUE", unique: true
    end

    create_table "users", primary_key: "userID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "groupID", limit: 10, null: false
      t.string "role", limit: 10, null: false
      t.string "username", limit: 32, null: false
      t.string "name", limit: 32, null: false
      t.string "email", limit: 100
      t.string "password", limit: 64, null: false
      t.string "templogin", limit: 30
      t.index ["groupID"], name: "groupID"
    end

    add_foreign_key "hires", "groups", column: "groupID", primary_key: "groupID", name: "hires_ibfk_1", on_update: :cascade, on_delete: :cascade
    add_foreign_key "hires", "status", column: "status", primary_key: "status", name: "hires_ibfk_2"
    add_foreign_key "hires", "users", column: "userID", primary_key: "userID", name: "fk_hires_userID"
    add_foreign_key "loans", "hires", column: "hireID", primary_key: "hireID", name: "loans_ibfk_1", on_update: :cascade, on_delete: :cascade
    add_foreign_key "loans", "stock", column: "stockID", primary_key: "stockID", name: "stockID"
    add_foreign_key "multi_stock", "stock", column: "stockID", primary_key: "stockID", name: "multi_stock_ibfk_1"
    add_foreign_key "ordered_sizes", "hires", column: "hireID", primary_key: "hireID", name: "ordered_sizes_ibfk_1", on_update: :cascade, on_delete: :cascade
    add_foreign_key "ordered_sizes", "sizes", column: "sizeID", primary_key: "sizeID", name: "ordered_sizeID"
    add_foreign_key "packs", "sizes", column: "cont_sizeID", primary_key: "sizeID", name: "fk_pack_cont_sizeID"
    add_foreign_key "packs", "sizes", column: "pack_sizeID", primary_key: "sizeID", name: "fk_pack_sizeID"
    add_foreign_key "sizes", "styles", column: "styleID", primary_key: "styleID", name: "styleID"
    add_foreign_key "stock", "sizes", column: "sizeID", primary_key: "sizeID", name: "stock_sizeID"
    add_foreign_key "users", "groups", column: "groupID", primary_key: "groupID", name: "fk_user_groupID"
  end

end

