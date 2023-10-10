Rails.application.routes.draw do
  resources :properties
  # Devise
  devise_for :users,  controllers: { registrations: 'registrations' },
                      path: '',
                      path_names: { sign_in: 'login',
                                    sign_out: 'logout',
                                    sign_up: 'register' }
  resources :contacts, only: %i[new create]
      get '/home',    to: 'pages#home'
      get '/privacy', to: 'pages#privacy'
      get '/legal',   to: 'pages#terms'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
end
