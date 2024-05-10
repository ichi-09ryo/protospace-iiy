Rails.application.routes.draw do
  devise_for :users
  root to:"prototypes#index"

  resources :comments, only: :create
  resources :prototypes
  resources :users
end

