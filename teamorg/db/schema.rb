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

ActiveRecord::Schema.define(:version => 20101027212004) do

  create_table "addresses", :force => true do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postal_code"
    t.integer  "address_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses_people", :id => false, :force => true do |t|
    t.integer  "person_id",  :null => false
    t.integer  "address_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "athletes", :force => true do |t|
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "athletes_parents", :id => false, :force => true do |t|
    t.integer  "athlete_id", :null => false
    t.integer  "person_id",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "athletes_rosters", :id => false, :force => true do |t|
    t.integer  "athlete_id",    :null => false
    t.integer  "roster_id",     :null => false
    t.integer  "jersey_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", :force => true do |t|
    t.integer  "email_type"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails_people", :id => false, :force => true do |t|
    t.integer  "person_id",  :null => false
    t.integer  "email_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "date_of_birth"
    t.integer  "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people_phones", :id => false, :force => true do |t|
    t.integer  "person_id",  :null => false
    t.integer  "phone_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", :force => true do |t|
    t.integer  "phone_type"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rosters", :force => true do |t|
    t.string   "name"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "organization_id"
    t.integer  "current_roster"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
