class CreateAnktogroups < ActiveRecord::Migration
  def self.up
    create_table :anktogroups do |t|
      t.references :promoank
      t.references :ankgroup
      t.boolean :main

      t.timestamps
    end
  end

  def self.down
    drop_table :anktogroups
  end
end
