module Conveniences
  
  def self.included(c)
    c.helper_method :development?,
                    :admin?
    
  end
  
  
  def current_page
    params[:page] ||= 1
  end
  
  def development?
    ENV['RAILS_ENV'] == 'development'
  end
  
  def admin?
    false # TODO: make this do something
  end


  
end