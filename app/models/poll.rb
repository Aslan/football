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
  #   event_id     : integer 
  #   created_at   : datetime 
  #   updated_at   : datetime 
  # =======================


  # Radio: true -> radio, false -> select box
  # true -> responses to the poll are visible before responding
  attr_accessible :user_id, :body, :radio, :active, :published_at, :closed_on, :editable, :visible, :event_id

  has_many :poll_answers
  has_many :comments, :as => :commentable
  
  def self.event_poll(*args)
    params = args.extract_options!
    poll_closed_on = params[:time].to_datetime - (params[:close_poll].to_i || 2).hours
    poll = self.new(:user_id => params[:user_id] ,:body => "Are you in?" ,:active => true,:closed_on => poll_closed_on,
    :editable => false,:visible => false, :published_at => params[:time].to_datetime)
    poll.poll_answers = [PollAnswer.new(:body => "Yes"), PollAnswer.new(:body => "No")] 
    poll
  end
end
