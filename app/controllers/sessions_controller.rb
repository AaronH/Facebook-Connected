class SessionsController < ApplicationController
  before_filter :end_session, :only => :destroy

  def new
    unless logged_in?
      self.current_user = User.create_from_fb_connect facebook_session.user 
      fb_notification "Thanks for joining Facebook Connected"
    end
    redirect_back_or_default
  end
  
  def destroy
    redirect_to root_url
  end

end
