class CreateCritterposts < ActiveRecord::Migration
  def self.up
    create_table :critterposts do |t|
      t.text :content, :null => false, :limit => 140
      t.integer :user_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :critterposts
  end
end
