Closedfiles::Application.routes.draw do

  root to: 'closedfiles#index'
  resources :closedfiles

end