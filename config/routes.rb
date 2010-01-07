ActionController::Routing::Routes.draw do |map|

  map.root :controller => "home"
  
  map.resources :users
  map.logout  '/logout',  :controller => 'sessions', :action => 'destroy'
  map.login   '/login',   :controller => 'sessions', :action => 'new'
  
  map.send_message '/send_message', :controller => 'home', :action => 'send_message'

end
