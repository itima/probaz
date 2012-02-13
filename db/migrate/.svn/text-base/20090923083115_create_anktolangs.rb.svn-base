class CreateAnktolangs < ActiveRecord::Migration
  def self.up
    create_table :anktolangs do |t|
      t.references :promoank
      t.references :language
      t.references :langlevel

      t.timestamps
    end
  end

  def self.down
    drop_table :anktolangs
  end
end
