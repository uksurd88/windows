class CreateSearchoffers < ActiveRecord::Migration
  def self.up
    create_table :searchoffers do |t|
      t.string :company
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :searchoffers
  end
end
