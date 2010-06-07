class CreatePolls < ActiveRecord::Migration
  def self.up
    create_table :polls do |t|
      t.integer :user_id,       :null => false
      t.text :body
      t.boolean :radio,   :default => true, :null => false #true -> radio, false -> select box
      t.boolean :active,  :default => true, :null => false
      t.boolean :editable,:default => false, :null => false
      t.boolean :visible, :default => false, :null => false #true -> responses to the poll are visible before responding 
      t.datetime :published_at
      t.datetime :closed_on
      t.integer :event_id, :default => 0
      t.timestamps
    end
  end
  
  def self.down
    drop_table :polls
  end
end