Rails.application.routes.draw do
  resources :contacts
      get '/home',    to: 'pages#home'
      get '/privacy', to: 'pages#privacy'
      get '/legal',   to: 'pages#terms'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
end
