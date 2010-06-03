class Poll < ActiveRecord::Base

  # === List of columns ===
  #   id           : integer 
  #   user_id      : integer 
  #   body         : text 
  #   radio        : boolean 
  #   active       : boolean 
  #   editable     : boolean 
  #   visible      : boolean 
  #   published_at : datetime 
  #   closed_on    : datetime 
  #   created_at   : datetime 
  #   updated_at   : datetime 
  # =======================

  attr_accessible :user_id, :body, :radio, :active, :published_at, :closed_on, :editable, :visible
end
