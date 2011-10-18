Shredder::Application.routes.draw do
  get "session/create"

  resources :questions
  resources :categories, :only => [:index,:show]

  match '/login' => 'session#new', :as => 'login'
  match '/logout' => 'session#logout', :as => 'logout'
  delete '/session' => 'session#destroy', :as => 'destroy_session'

  match '/auth/twitter/callback' => 'session#create'

  root :to => 'questions#index'
end
