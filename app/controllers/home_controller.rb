class HomeController < ApplicationController
  
  def index
    @time = Time.now
    # flash[:notice] = "This is a notice."
    # flash[:error]   = "This is an error with <a href='#'>a link</a> - so no fading."
  end
    
end
