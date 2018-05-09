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

ActiveRecord::Schema.define(version: 20180507142600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "name"
    t.text "annotation"
    t.decimal "tag"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "documents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "site_type"
    t.string "site_design"
    t.boolean "design_logo"
    t.boolean "design_banner"
    t.boolean "design_page"
    t.string "engine"
    t.boolean "module_otzyvy"
    t.boolean "module_blog"
    t.boolean "module_slider"
    t.boolean "module_gallery"
    t.boolean "module_easycalc"
    t.boolean "module_hardcalc"
    t.boolean "module_formit"
    t.boolean "module_callback"
    t.boolean "module_chat"
    t.boolean "module_mailer"
    t.boolean "module_multilang"
    t.boolean "module_catalog"
    t.boolean "module_basket"
    t.boolean "module_payment"
    t.boolean "module_currency"
    t.boolean "module_multitovar"
    t.boolean "module_sales"
    t.boolean "module_api"
    t.boolean "module_reg"
    t.boolean "module_cabinet"
    t.boolean "module_reccomendation"
    t.boolean "module_importer"
    t.boolean "module_referal"
    t.boolean "module_filtration"
    t.boolean "c_easypage"
    t.integer "content_easypage"
    t.boolean "c_hardpage"
    t.integer "content_hardpage"
    t.boolean "c_editpage"
    t.integer "content_editpage"
    t.boolean "c_post"
    t.integer "content_post"
    t.boolean "c_translate"
    t.integer "content_translate"
    t.boolean "module_googlemaps"
    t.string "type_logo"
    t.boolean "elements_logo"
    t.boolean "prototype_logo"
    t.boolean "variate_logo"
    t.integer "variant_logo"
    t.boolean "oneside_visitka"
    t.boolean "twoside_visitka"
    t.boolean "blank"
    t.boolean "convert"
    t.boolean "cennik"
    t.boolean "papka"
    t.boolean "uniform"
    t.boolean "disk"
    t.boolean "email_send"
    t.boolean "suvenir"
    t.boolean "flier"
    t.boolean "plakat"
    t.boolean "banner"
    t.boolean "shtender"
    t.integer "diz_balance"
    t.integer "prog_balance"
    t.integer "support_balance"
    t.integer "log_balance"
    t.integer "firm_balance"
    t.integer "total_sum"
    t.integer "status"
    t.string "user_name"
    t.string "user_email"
    t.string "user_phone"
    t.string "user_password"
    t.string "user_password_confirmation"
    t.string "order_title"
    t.text "order_detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "page", force: :cascade do |t|
    t.string "page_title"
    t.text "description"
    t.text "keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "title"
    t.decimal "tag"
    t.decimal "annotation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "sites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steps", force: :cascade do |t|
    t.bigint "order_id"
    t.decimal "status"
    t.integer "summa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_steps_on_order_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
