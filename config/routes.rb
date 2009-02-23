ActionController::Routing::Routes.draw do |map|
  
  map.resources :polls
  map.resources :answers
  map.resources :vote_report
  map.root :controller=>"polls"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
