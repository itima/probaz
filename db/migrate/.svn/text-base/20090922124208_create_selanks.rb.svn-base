class CreateSelanks < ActiveRecord::Migration
  def self.up
    create_table :selanks do |t|
      t.string :fio
      t.text :contact
      t.references :firm
      t.references :promoank
      t.boolean :payed
      t.timestamps
    end
  end

  def self.down
    drop_table :selanks
  end
end
