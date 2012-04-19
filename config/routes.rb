Closedfiles::Application.routes.draw do

  get "main/index"

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

#  match "/closedfiles/index.js", :controller => 'closedfiles', :action => 'index', :format => :js

  resources :sessions
  resources :users
  resources :password_resets
  resources :searches
  
  root to: 'main#index'
  resources :closedfiles

end