Shredder::Application.routes.draw do
  get "session/create"

  resources :questions
  resources :categories, :only => [:index,:show]

  match '/login' => 'session#new', :as => 'login'
  match '/auth/twitter/callback' => 'session#create'

  root :to => 'questions#index'
end
