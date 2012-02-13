class CreatePromoanks < ActiveRecord::Migration
  def self.up
    create_table :promoanks do |t|
      t.string :fname
      t.string :lname
      t.string :nameto
      t.string :email
      t.string :pass
      t.boolean :active
      t.boolean :moderate
      t.boolean :sex
      t.date :birthday
      t.float :growth
      t.float :weight
      t.string :clothessize
      t.string :bootssize
      t.references :hairlength
      t.references :haircolor
      t.boolean :merried
      t.string :passseries
      t.string :passnumber
      t.date    :passdate
      t.string  :passwho
      t.references :passcity
      t.string  :passindex
      t.string  :passstreet
      t.string  :passhouse
      t.boolean :citizenship
      t.references :factcity
      t.references :factmetro
      t.string :factindex
      t.string :factstreet
      t.string :facthouse
      t.string :factphone
      t.string :mobilephone
      t.references :education
      t.references :educationform
      t.string :institute
      t.string :educationspec
      t.date :educationstart
      t.date :educationstop
      t.boolean :hascar
      t.boolean :drivercard
      t.string :carmark
      t.boolean :hasmedbook
      t.string :medbooknumber
      t.date :medbookstop
      t.references :pclevel
      t.string :pcprogramms
      t.text :skills
      t.text :workexp
      t.text :faces
      t.references :workgraphic
      t.references :workemployment
      t.float :workcost
      t.text :comment
      t.text :files
      t.boolean :checkemail
      t.boolean :reject
      t.string :rejectmsg
      t.timestamps
    end
  end

  def self.down
    drop_table :promoanks
  end
end
