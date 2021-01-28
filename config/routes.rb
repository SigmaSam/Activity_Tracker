Rails.application.routes.draw do
  resources :home, only: %i[index]
  resources :users, only: %i[new create show]
  resources :groups
  resources :routines

  get '/log_in', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
