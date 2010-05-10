class Post < ActiveRecord::Base
  attr_accessible :user_id, :title, :body, :published, :comments_count, :views_count, :published_at, :created_at, :updated_at  
  belongs_to :author, :foreign_key => 'user_id', :class_name => 'User'

  def self.per_page; 3; end
  def get_author; (self.author) ? self.author.login : "Anonymous"; end
end
