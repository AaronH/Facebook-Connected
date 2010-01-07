# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  extend ActiveSupport::Memoizable  
  include Conveniences

  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  # Scrub sensitive parameters from your log
  filter_parameter_logging  :fb_sig_friends

  layout proc{ |c| c.request.xhr? ? false : "application" }

  before_filter :set_facebook_session
  helper_method :facebook_session, :current_user

  cattr_accessor :current_user
  rescue_from Facebooker::Session::SessionExpired, :with => :facebook_session_expired

  private
  def current_user
    @current_user ||= login_from_fb
  end

  def login_from_fb
    if facebook_session
      self.current_user = User.find_by_fb_user(facebook_session.user)
    end
  end

  def end_session(message = "You have been logged out.")
    clear_fb_cookies!
    clear_facebook_session_information
    reset_session # remove your cookies!
    flash[:error] = message
    redirect_to root_url
  end

  def facebook_session_expired
    end_session "Your facebook session has expired."
  end


end
