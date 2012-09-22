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

ActiveRecord::Schema.define(:version => 20120921232442) do

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.integer  "version"
    t.date     "published_on"
    t.string   "isbn"
    t.string   "image_url"
    t.string   "amazon_url"
    t.integer  "publisher_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "books", ["publisher_id"], :name => "index_books_on_publisher_id"

  create_table "books_categories", :force => true do |t|
    t.integer  "book_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "books_categories", ["book_id"], :name => "index_books_categories_on_book_id"
  add_index "books_categories", ["category_id"], :name => "index_books_categories_on_category_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "publishers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "studies", :force => true do |t|
    t.string   "status"
    t.text     "comment"
    t.integer  "book_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "studies", ["book_id"], :name => "index_studies_on_book_id"

end
