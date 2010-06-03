class PollAnswer < ActiveRecord::Base

  # === List of columns ===
  #   id             : integer 
  #   poll_id        : integer 
  #   body           : string 
  #   response_count : integer 
  #   created_at     : datetime 
  #   updated_at     : datetime 
  # =======================

  attr_accessible :poll_id, :body, :response_count
end
