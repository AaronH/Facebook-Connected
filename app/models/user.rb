class User < ActiveRecord::Base
  

  def self.find_by_fb_user(fb_user)
    User.find_by_fb_user_id fb_user.uid 
  end

  # Take the data returned from facebook and create a new user from it.
  def self.create_from_fb_connect(fb_user)
    User.create :name => fb_user.name, 
                :fb_user_id => fb_user.uid.to_i                              
  end
  

end
