class Poll < ActiveRecord::Base
  attr_accessible :user_id, :body, :radio, :active, :published_at, :closed_on, :editable, :visible
end
