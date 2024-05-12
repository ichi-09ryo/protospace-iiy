Rails.application.routes.draw do
  devise_for :users
  root to:"prototypes#index"

  resources :prototypes, except: :show do
    member do
      get :edit
    end
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: :show
end

