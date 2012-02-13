class CreateLanglevels < ActiveRecord::Migration
  def self.up
    create_table :langlevels do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :langlevels
  end
end
