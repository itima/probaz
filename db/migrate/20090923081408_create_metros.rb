class CreateMetros < ActiveRecord::Migration
  def self.up
    create_table :metros do |t|
      t.string :name
      t.references :city

      t.timestamps
    end
  end

  def self.down
    drop_table :metros
  end
end
