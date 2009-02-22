ActionController::Routing::Routes.draw do |map|
  
  map.resources :polls
  map.root :controller=>"polls"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
