module Conveniences
  
  def self.included(c)
    c.helper_method :development?,
                    :logged_in?,
                    :admin?
    
  end
    
  def current_page
    params[:page] ||= 1
  end
  
  def development?
    ENV['RAILS_ENV'] == 'development'
  end
  
  
  def logged_in?
    !!current_user
  end

  def admin?
    false # TODO: make this do something
  end
  
  def require_user
    unless current_user
      store_location
      flash[:notice] = "You must be logged in to access this page"
      redirect_to(:back || root_url)
      return false
    end
  end

  def require_no_user
    if current_user
      store_location
      flash[:notice] = "You must be logged out to access this page"
      redirect_to(:back || root_url)
      return false
    end
  end
  
  def admin_required
    unless admin?
      store_location
      redirect_to root_path
      return false
    end
  end
  
  def store_location
    session[:return_to] = request.request_uri
  end
  
  def redirect_back_or_default(default = root_url)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end
  
  


  
end