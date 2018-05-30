Rails.application.routes.draw do
  root 'session#home'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  post 'logout' => 'sessions#destroy'
  resources :user, only: [:new, :create]
  resources :tracks, only: [:index, :show]
end
