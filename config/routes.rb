Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create, :show]
  resources :destinations, only: [:index, :create, :show]
  resources :itineraries, only: [:index, :create, :show]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
