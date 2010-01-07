class SessionsController < ApplicationController
  before_filter :end_session, :only => :destroy

  def new
    User.create_from_fb_connect facebook_session.user unless logged_in?
    redirect_back_or_default
  end
  
  def destroy
    redirect_to root_url
  end

end
