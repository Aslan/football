class PollAnswer < ActiveRecord::Base
  attr_accessible :poll_id, :body, :response_count
end
