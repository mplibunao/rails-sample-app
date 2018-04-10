Rails.application.routes.draw do
  # get 'session/new'

  root 'static_pages#home'
  get 'users/new'
  get '/help', to: 'static_pages#help', as: 'helf'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'

  # post '/signup', to: 'users#create'
  resources :users

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
end
