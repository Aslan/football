class User < ActiveRecord::Base

  # === List of columns ===
  #   id                  : integer 
  #   login               : string 
  #   email               : string 
  #   crypted_password    : string 
  #   password_salt       : string 
  #   persistence_token   : string 
  #   single_access_token : string 
  #   perishable_token    : string 
  #   login_count         : integer 
  #   failed_login_count  : integer 
  #   last_request_at     : datetime 
  #   current_login_at    : datetime 
  #   current_login_ip    : string 
  #   last_login_ip       : string 
  #   created_at          : datetime 
  #   updated_at          : datetime 
  # =======================

  acts_as_authentic 
  # acts_as_authorization_subject
  
  has_and_belongs_to_many :roles
  has_many :posts
  
  # attr_accessor :crypted_password_confirmation
  def deliver_password_reset_instructions!(url)
    reset_perishable_token!
    ContactUsMailer.deliver_password_reset_instructions(self, url + "?id=#{perishable_token}")
  end
  
  def role_names
    roles.map{|r| r.authorizable_id ? r.authorizable_type.constantize.find(r.authorizable_id).name : r.name.humanize}
  end
end
