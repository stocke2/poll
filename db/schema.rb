# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090221230458) do

  create_table "answers", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "answers_polls", :id => false, :force => true do |t|
    t.integer "answer_id"
    t.integer "poll_id"
  end

  add_index "answers_polls", ["answer_id"], :name => "index_answers_polls_on_answer_id"
  add_index "answers_polls", ["poll_id"], :name => "index_answers_polls_on_poll_id"

  create_table "polls", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
