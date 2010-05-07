class User < ActiveRecord::Base
  acts_as_authentic 
  # acts_as_authorization_subject
  
  has_and_belongs_to_many :roles
  
  # attr_accessor :crypted_password_confirmation
  def deliver_password_reset_instructions!(url)
    reset_perishable_token!
    ContactUsMailer.deliver_password_reset_instructions(self, url + "?id=#{perishable_token}")
  end
  
  def role_names
    roles.map{|r| r.authorizable_id ? r.authorizable_type.constantize.find(r.authorizable_id).name : r.name.humanize}
  end
end
