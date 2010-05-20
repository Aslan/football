class Post < ActiveRecord::Base

  # === List of columns ===
  #   id             : integer 
  #   user_id        : integer 
  #   title          : string 
  #   body           : text 
  #   published      : boolean 
  #   comments_count : integer 
  #   views_count    : integer 
  #   published_at   : datetime 
  #   created_at     : datetime 
  #   updated_at     : datetime 
  # =======================

	has_many :comments, :as => :commentable
  attr_accessible :user_id, :title, :body, :published, :comments_count, :views_count, :published_at, :created_at, :updated_at  
  belongs_to :author, :foreign_key => 'user_id', :class_name => 'User'

  def self.per_page; 3; end
  def get_author; (self.author) ? self.author.login : "Anonymous"; end # no anonymous should post
  def master_comment; comments.roots.first; end
end
