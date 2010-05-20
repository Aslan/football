class Role < ActiveRecord::Base

  # === List of columns ===
  #   id                : integer 
  #   name              : string 
  #   authorizable_type : string 
  #   authorizable_id   : integer 
  #   created_at        : datetime 
  #   updated_at        : datetime 
  # =======================

  acts_as_authorization_role
  
  has_and_belongs_to_many :users
end
