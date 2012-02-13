class CreateAdmins < ActiveRecord::Migration
  def self.up
    create_table :admins do |t|
      t.string :kod
      t.string :pass
      t.boolean :sysadmin

      t.timestamps
    end
    Admin.create(:id => 1, :kod => 'SysAdmin', :pass => "1111",:sysadmin =>true)
  end

  def self.down
    drop_table :admins
  end
end
