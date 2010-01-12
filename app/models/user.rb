class User < ActiveRecord::Base
  
  validates_uniqueness_of :fb_user_id, :on => :save, :message => "has already been taken"
  validates_presence_of :name, :on => :save, :message => "can't be blank"

  def self.find_by_fb_user(fb_user)
    User.find_by_fb_user_id fb_user.uid 
  end

  # Take the data returned from facebook and create a new user from it.
  def self.create_from_fb_connect(fb_user)
    User.create :name => fb_user.name, 
                :fb_user_id => fb_user.uid.to_i                              
  end
  
  def display_name
    name.split(' ').first
  end
  

end
