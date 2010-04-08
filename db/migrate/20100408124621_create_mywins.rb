class CreateMywins < ActiveRecord::Migration
  def self.up
    create_table :mywins do |t|
      t.string :initial
      t.string :surname
      t.string :address
      t.string :areacode
      t.integer :phonenumber
      t.integer :numberofwindows
      t.text :windowsdescription
      t.integer :windowslayout
      t.integer :points
      t.boolean :accept

      t.timestamps
    end
  end

  def self.down
    drop_table :mywins
  end
end
