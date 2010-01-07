ActionController::Routing::Routes.draw do |map|

  map.root :controller => "home"
  
  map.resources :users, :only => [:new]
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'

end
