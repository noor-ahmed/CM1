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

ActiveRecord::Schema.define(version: 20170522201324) do

  create_table "accumulators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float    "acc_val_change",    limit: 24
    t.float    "acc_val_available", limit: 24
    t.integer  "user_account_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["user_account_id"], name: "index_accumulators_on_user_account_id", using: :btree
  end

  create_table "bonus_accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float    "ba_val_available",    limit: 24
    t.float    "ba_val_change",       limit: 24
    t.float    "ba_val_before",       limit: 24
    t.string   "ba_pulse"
    t.float    "ba_on_net_tariff",    limit: 24
    t.float    "ba_off_net_tariff",   limit: 24
    t.string   "ba_atw"
    t.string   "ba_call_destination"
    t.integer  "ba_priority"
    t.integer  "user_account_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["user_account_id"], name: "index_bonus_accounts_on_user_account_id", using: :btree
  end

  create_table "call_charges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "call_record_id"
    t.float    "charged_amount", limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["call_record_id"], name: "index_call_charges_on_call_record_id", using: :btree
  end

  create_table "call_records", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_account_id"
    t.string   "call_destination"
    t.integer  "duration"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_account_id"], name: "index_call_records_on_user_account_id", using: :btree
  end

  create_table "communities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "comm_pulse"
    t.float    "comm_on_net_tariff",    limit: 24
    t.float    "comm_off_net_tariff",   limit: 24
    t.string   "comm_atw"
    t.string   "comm_call_destination"
    t.integer  "product_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["product_id"], name: "index_communities_on_product_id", using: :btree
  end

  create_table "fnf_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "no_of_fnf"
    t.string   "pulse"
    t.float    "fnf_on_net_tariff",  limit: 24
    t.float    "fnf_off_net_tariff", limit: 24
    t.string   "fnf_atw"
    t.integer  "fnf_priority"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "isd_tariffs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "pulse"
    t.float    "tariff",        limit: 24
    t.string   "number_prefix"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "offers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "offer_pulse"
    t.float    "offer_on_net_tariff",    limit: 24
    t.float    "offer_off_net_tariff",   limit: 24
    t.string   "offer_atw"
    t.string   "offer_call_destination"
    t.integer  "offer_priority"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "product_pulse"
    t.float    "product_on_net_tariff",    limit: 24
    t.float    "product_off_net_tariff",   limit: 24
    t.string   "product_atw"
    t.string   "product_call_destination"
    t.integer  "product_priority"
    t.integer  "fnf_item_id"
    t.integer  "community_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["community_id"], name: "index_products_on_community_id", using: :btree
    t.index ["fnf_item_id"], name: "index_products_on_fnf_item_id", using: :btree
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "service_pulse"
    t.float    "service_on_net_tariff",    limit: 24
    t.float    "service_off_net_tariff",   limit: 24
    t.string   "service_atw"
    t.string   "service_call_destination"
    t.integer  "service_priority"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "short_codes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "phone"
    t.float    "tariff",     limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "user_accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "phone"
    t.string   "name"
    t.float    "account_balance", limit: 24
    t.integer  "product_id"
    t.integer  "service_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["product_id"], name: "index_user_accounts_on_product_id", using: :btree
    t.index ["service_id"], name: "index_user_accounts_on_service_id", using: :btree
  end

  create_table "user_fnfs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "fnf_phone_no"
    t.integer  "user_account_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_account_id"], name: "index_user_fnfs_on_user_account_id", using: :btree
  end

  create_table "user_offers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_account_id"
    t.integer  "offer_id"
    t.integer  "priority_value"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["offer_id"], name: "index_user_offers_on_offer_id", using: :btree
    t.index ["user_account_id"], name: "index_user_offers_on_user_account_id", using: :btree
  end

end
