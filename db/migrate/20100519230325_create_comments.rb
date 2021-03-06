class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :user_id, :null => false
      t.text :content
      t.boolean :active, :default => true,  :null => false
      t.string :ancestry
      t.integer :commentable_id
      t.string :commentable_type
      t.timestamps

    end
  end
  
  def self.down
    drop_table :comments
  end
end
