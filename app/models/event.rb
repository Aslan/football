class Event < ActiveRecord::Base

  # === List of columns ===
  #   id         : integer 
  #   user_id    : integer 
  #   title      : string 
  #   body       : text 
  #   time       : datetime 
  #   poll_id    : integer 
  #   active     : boolean 
  #   created_at : datetime 
  #   updated_at : datetime 
  # =======================

  attr_accessible :user_id, :title, :body, :time, :poll_id, :active
  belongs_to :users
  has_one :poll
end
