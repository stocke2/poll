ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session

  
  map.resources :polls
  map.resources :answers
  map.resources :vote_report
  map.root :controller=>"polls"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
