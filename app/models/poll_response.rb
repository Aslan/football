class PollResponse < ActiveRecord::Base

  # === List of columns ===
  #   id             : integer 
  #   poll_answer_id : integer 
  #   user_id        : integer 
  #   created_at     : datetime 
  #   updated_at     : datetime 
  # =======================

  attr_accessible :poll_answer_id, :user_id
end
