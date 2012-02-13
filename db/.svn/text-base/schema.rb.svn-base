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

ActiveRecord::Schema.define(:version => 20300923085754) do

  create_table "admins", :force => true do |t|
    t.string   "kod"
    t.string   "pass"
    t.boolean  "sysadmin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ankgroups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "anktogroups", :force => true do |t|
    t.integer  "promoank_id"
    t.integer  "ankgroup_id"
    t.boolean  "main"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "anktolangs", :force => true do |t|
    t.integer  "promoank_id"
    t.integer  "language_id"
    t.integer  "langlevel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educationforms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firms", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "pass"
    t.boolean  "active"
    t.boolean  "moderate"
    t.float    "acount"
    t.string   "phone"
    t.string   "fax"
    t.string   "addrcity"
    t.string   "addrindex"
    t.string   "addrpost"
    t.string   "addrrecive"
    t.string   "INN"
    t.string   "KPP"
    t.string   "namefull"
    t.string   "contact"
    t.string   "addrur"
    t.string   "acountnumber"
    t.string   "BIK"
    t.string   "bankname"
    t.string   "ks"
    t.boolean  "checkemail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "haircolors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hairlengths", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "langlevels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logers", :force => true do |t|
    t.integer  "objid"
    t.string   "objtype"
    t.boolean  "accin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metros", :force => true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pclevels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promoanks", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "nameto"
    t.string   "email"
    t.string   "pass"
    t.boolean  "active"
    t.boolean  "moderate"
    t.boolean  "sex"
    t.date     "birthday"
    t.float    "growth"
    t.float    "weight"
    t.string   "clothessize"
    t.string   "bootssize"
    t.integer  "hairlength_id"
    t.integer  "haircolor_id"
    t.boolean  "merried"
    t.string   "passseries"
    t.string   "passnumber"
    t.date     "passdate"
    t.string   "passwho"
    t.integer  "passcity_id"
    t.string   "passindex"
    t.string   "passstreet"
    t.string   "passhouse"
    t.boolean  "citizenship"
    t.integer  "factcity_id"
    t.integer  "factmetro_id"
    t.string   "factindex"
    t.string   "factstreet"
    t.string   "facthouse"
    t.string   "factphone"
    t.string   "mobilephone"
    t.integer  "education_id"
    t.integer  "educationform_id"
    t.string   "institute"
    t.string   "educationspec"
    t.date     "educationstart"
    t.date     "educationstop"
    t.boolean  "hascar"
    t.boolean  "drivercard"
    t.string   "carmark"
    t.boolean  "hasmedbook"
    t.string   "medbooknumber"
    t.date     "medbookstop"
    t.integer  "pclevel_id"
    t.string   "pcprogramms"
    t.text     "skills"
    t.text     "workexp"
    t.text     "faces"
    t.integer  "workgraphic_id"
    t.integer  "workemployment_id"
    t.float    "workcost"
    t.text     "comment"
    t.text     "files"
    t.boolean  "checkemail"
    t.boolean  "reject"
    t.string   "rejectmsg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seccodes", :force => true do |t|
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "selanks", :force => true do |t|
    t.string   "fio"
    t.text     "contact"
    t.integer  "firm_id"
    t.integer  "promoank_id"
    t.boolean  "payed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workemployments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workgraphics", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
