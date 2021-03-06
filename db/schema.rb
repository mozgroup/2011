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

ActiveRecord::Schema.define(:version => 20110126181802) do

  create_table "timelines", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
    t.integer  "timesheet_task_id"
    t.integer  "predecessor_id"
    t.string   "name"
    t.date     "start_date"
    t.integer  "duration"
    t.integer  "delay"
    t.boolean  "is_resolved"
    t.boolean  "is_in_progress"
    t.decimal  "cost"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workloads", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "owner"
    t.date     "work_date"
    t.integer  "duration"
  end

end
