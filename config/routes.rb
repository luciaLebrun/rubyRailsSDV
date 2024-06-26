Rails.application.routes.draw do
  resources :books
  resources :borrows, only: [:create, :destroy]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'

  get '/account', to: 'users#edit'
  patch '/account', to: 'users#update'

  root 'books#index'
end
