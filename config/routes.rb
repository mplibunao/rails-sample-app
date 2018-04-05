Rails.application.routes.draw do

  get 'dashboard/show'

  get '/auth/oauth2/callback' => 'auth0#callback'

  get '/auth/failure' => 'auth0#failure'


  root 'static_pages#home'

  # get 'users/new'

  get '/help', to: 'static_pages#help', as: 'helf'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'


  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'

  get '/signin' => 'auth#index'


  resources :users

end
