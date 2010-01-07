class SessionsController < ApplicationController
  before_filter :require_user, :only => [:destroy]
  
  def destroy
    cookies.delete :auth_token
    clear_fb_cookies!
    reset_session
    redirect_to root_path
  end
  
end
