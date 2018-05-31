Rails.application.routes.draw do
  root 'sessions#home'
  post '/' => 'sessions#update'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  post 'logout' => 'sessions#destroy'
  resources :users, only: [:new, :create]
  resources :tracks, only: [:index, :show]
end
