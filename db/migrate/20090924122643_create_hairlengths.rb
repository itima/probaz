class CreateHairlengths < ActiveRecord::Migration
  def self.up
    create_table :hairlengths do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :hairlengths
  end
end
