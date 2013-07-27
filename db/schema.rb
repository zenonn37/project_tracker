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

ActiveRecord::Schema.define(:version => 20130726221435) do

  create_table "projects", :force => true do |t|
    t.string   "project_name"
    t.string   "project_type"
    t.string   "project_deploy"
    t.string   "project_sdk"
    t.string   "project_languages"
    t.string   "project_frameworks"
    t.string   "project_end"
    t.boolean  "complete",           :default => false
    t.text     "project_details"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "projects", ["project_name"], :name => "index_projects_on_project_name"

end
