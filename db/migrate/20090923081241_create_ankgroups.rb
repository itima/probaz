class CreateAnkgroups < ActiveRecord::Migration
  def self.up
    create_table :ankgroups do |t|
      t.string :name

      t.timestamps
    end
 end

  def self.down
    drop_table :ankgroups
  end
end
