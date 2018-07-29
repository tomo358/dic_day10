Rails.application.routes.draw do
  get '/users/sign_in', to: 'sessions#new'
  resources :sessions, only: [:create, :destroy]
  resources :users
  root "blogs#index"
  resources :blogs
end
