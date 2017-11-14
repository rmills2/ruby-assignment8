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

ActiveRecord::Schema.define(version: 20171112230901) do

  create_table "accounts", force: :cascade do |t|
    t.string "gender"
    t.integer "age"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.integer "user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "todo_items" because of following StandardError
#   Unknown type '' for column 'account'

  create_table "todo_lists", force: :cascade do |t|
    t.string "list_name"
    t.string "list_due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "todoItems_id"
    t.integer "todoItem_id"
    t.index ["todoItem_id"], name: "index_todo_lists_on_todoItem_id"
    t.index ["todoItems_id"], name: "index_todo_lists_on_todoItems_id"
    t.index ["user_id"], name: "index_todo_lists_on_user_id"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'Account' for column 'account'

end
