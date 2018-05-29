Rails.application.routes.draw do
  root 'applicaton#home'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  post 'destroy' => 'sessions#destroy'
  resources :user, only: [:new, :create]
end
