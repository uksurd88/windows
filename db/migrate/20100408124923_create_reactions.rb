class CreateReactions < ActiveRecord::Migration
  def self.up
    create_table :reactions do |t|
      t.string :company
      t.string :rotation
      t.string :preview
      t.boolean :accept

      t.timestamps
    end
  end

  def self.down
    drop_table :reactions
  end
end
