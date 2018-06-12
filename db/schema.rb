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

ActiveRecord::Schema.define(version: 2018_06_11_182139) do

  create_table "appointments", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "customer_id"
    t.integer "service_id"
    t.datetime "begin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_appointments_on_customer_id"
    t.index ["employee_id"], name: "index_appointments_on_employee_id"
    t.index ["service_id"], name: "index_appointments_on_service_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "phone"
    t.string "email"
    t.string "pictureUrl"
    t.string "street"
    t.string "plz"
    t.string "city"
    t.string "username"
    t.string "passsword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_work_time_helps", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "employeeWorkTime_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employeeWorkTime_id"], name: "index_employee_work_time_helps_on_employeeWorkTime_id"
    t.index ["employee_id"], name: "index_employee_work_time_helps_on_employee_id"
  end

  create_table "employee_work_times", force: :cascade do |t|
    t.string "day"
    t.time "startTime"
    t.time "endTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "phone"
    t.string "email"
    t.string "pictureUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "none_availabilities", force: :cascade do |t|
    t.string "comment"
    t.date "endDate"
    t.date "beginDate"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_none_availabilities_on_employee_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "description"
    t.integer "duration"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
