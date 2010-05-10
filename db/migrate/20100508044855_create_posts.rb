class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.boolean :published
      t.integer :comments_count
      t.integer :views_count
      t.datetime :published_at
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
  
  def self.down
    drop_table :posts
  end
end
