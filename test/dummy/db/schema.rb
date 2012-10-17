# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121017015058) do

  create_table "jabe_admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "jabe_admins", ["email"], :name => "index_jabe_admins_on_email", :unique => true
  add_index "jabe_admins", ["reset_password_token"], :name => "index_jabe_admins_on_reset_password_token", :unique => true

  create_table "jabe_comments", :force => true do |t|
    t.integer  "entry_id"
    t.string   "author"
    t.string   "author_email"
    t.string   "author_url"
    t.text     "content"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "permalink"
    t.string   "user_ip"
    t.string   "user_agent"
    t.string   "referrer"
    t.boolean  "spam"
  end

  add_index "jabe_comments", ["entry_id"], :name => "index_jabe_comments_on_entry_id"

  create_table "jabe_entries", :force => true do |t|
    t.string   "cached_slug"
    t.string   "title"
    t.text     "body"
    t.boolean  "draft"
    t.datetime "published_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "jabe_settings", :force => true do |t|
    t.string   "site_url"
    t.string   "host_name"
    t.string   "mail_from"
    t.string   "site_name"
    t.string   "tagline"
    t.string   "time_zone"
    t.string   "google_tracker_id"
    t.boolean  "blackbird_enabled"
    t.integer  "entries_per_page"
    t.string   "sidebar_heading"
    t.string   "github_username"
    t.string   "twitter_username"
    t.string   "show_github_badge"
    t.string   "facebook_url"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "akismet_key"
    t.string   "akismet_url"
  end

end
