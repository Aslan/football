class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.datetime :time
      t.integer :poll_id
      t.boolean :active
      t.timestamps
    end
  end
  
  def self.down
    drop_table :events
  end
end
