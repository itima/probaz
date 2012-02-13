class CreateFirms < ActiveRecord::Migration
  def self.up
    create_table :firms do |t|
      t.string :name
      t.string :email
      t.string :pass
      t.boolean :active
      t.boolean :moderate
      t.float :acount
      t.string :phone
      t.string :fax
      t.string :addrcity
      t.string :addrindex
      t.string :addrpost
      t.string :addrrecive
      t.string :INN
      t.string :KPP
      t.string :namefull
      t.string :contact
      t.string :addrur
      t.string :acountnumber
      t.string :BIK
      t.string :bankname
      t.string :ks
      t.boolean :checkemail
      t.timestamps
    end
  end

  def self.down
    drop_table :firms
  end
end
