class Comment < ActiveRecord::Base

  # === List of columns ===
  #   id               : integer 
  #   user_id          : integer 
  #   content          : text 
  #   active           : boolean 
  #   ancestory        : string 
  #   commentable_id   : integer 
  #   commentable_type : string 
  #   created_at       : datetime 
  #   updated_at       : datetime 
  # =======================

	belongs_to :commentable, :polymorphic => true
	has_ancestry
	belongs_to :user
	attr_accessible :user_id, :content, :active, :ancestory, :commentable_id, :commentable_type
	
	def author; self.user; end
end
