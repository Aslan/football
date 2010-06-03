class CreatePolls < ActiveRecord::Migration
  def self.up
    create_table :polls do |t|
      t.integer :user_id
      t.text :body
      t.boolean :radio
      t.boolean :active
      t.datetime :published_at
      t.datetime :closed_on
      t.boolean :editable
      t.boolean :visible
      t.timestamps
    end
  end
  
  def self.down
    drop_table :polls
  end
end
