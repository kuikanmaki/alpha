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

ActiveRecord::Schema.define(:version => 20130928173854) do

  create_table "books", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "author"
    t.string   "link"
    t.integer  "page_id"
    t.integer  "interest_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "books_pages", :force => true do |t|
    t.integer "book_id"
    t.integer "page_id"
  end

  create_table "interests", :force => true do |t|
    t.integer  "user_id"
    t.integer  "page_id"
    t.datetime "starting_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.text     "description"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "notes", :force => true do |t|
    t.text     "content",    :limit => 255
    t.integer  "user_id"
    t.integer  "page_id"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "notetype"
    t.string   "title"
    t.integer  "up_votes",                  :default => 0, :null => false
    t.integer  "down_votes",                :default => 0, :null => false
  end

  add_index "notes", ["page_id"], :name => "index_notes_on_page_id"

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "slug"
    t.string   "definition"
  end

  create_table "pages_books", :force => true do |t|
    t.integer "page_id"
    t.integer "book_id"
  end

  create_table "pages_parentpages", :id => false, :force => true do |t|
    t.integer "page_id"
    t.integer "parentpage_id"
  end

  add_index "pages_parentpages", ["page_id", "parentpage_id"], :name => "pages_parentpages_index", :unique => true

  create_table "pages_relatedpages", :id => false, :force => true do |t|
    t.integer "page_id"
    t.integer "relatedpage_id"
  end

  add_index "pages_relatedpages", ["page_id", "relatedpage_id"], :name => "pages_relatedpages_index", :unique => true

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "admin",               :default => false
    t.integer  "up_votes",            :default => 0,     :null => false
    t.integer  "down_votes",          :default => 0,     :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "votings", :force => true do |t|
    t.string   "voteable_type"
    t.integer  "voteable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "up_vote",       :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "votings", ["voteable_type", "voteable_id", "voter_type", "voter_id"], :name => "unique_voters", :unique => true
  add_index "votings", ["voteable_type", "voteable_id"], :name => "index_votings_on_voteable_type_and_voteable_id"
  add_index "votings", ["voter_type", "voter_id"], :name => "index_votings_on_voter_type_and_voter_id"

end
