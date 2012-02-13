class CreateLogers < ActiveRecord::Migration
  def self.up
    create_table :logers do |t|
      t.integer :objid
      t.string :objtype
      t.boolean :accin

      t.timestamps
    end
  end

  def self.down
    drop_table :logers
  end
end
