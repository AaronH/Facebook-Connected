class HomeController < ApplicationController
  
  def index
    @time = Time.now
    # flash[:notice] = "This is a notice"
    # flash[:error]   = "This is an error  <a href='#'>ok</a>"
  end
    
end
