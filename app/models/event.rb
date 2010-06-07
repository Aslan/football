class Event < ActiveRecord::Base

  # === List of columns ===
  #   id         : integer 
  #   user_id    : integer 
  #   title      : string 
  #   body       : text 
  #   time       : datetime 
  #   active     : boolean 
  #   created_at : datetime 
  #   updated_at : datetime 
  # =======================

  attr_accessible :user_id, :title, :body, :time,  :active
  belongs_to :creator, :foreign_key => 'user_id', :class_name => 'User'
  has_many :comments, :as => :commentable
  has_one :poll
end
