class SessionsController < ApplicationController

  def new
    User.create_from_fb_connect facebook_session.user
    redirect_back_or_default
  end

  def destroy
    end_session
  end

end
