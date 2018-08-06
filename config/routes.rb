Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :users, only: [:index]
  resources :proposals
  resources :messages

  namespace :api do
    namespace :v1 do
      resources :users
      resources :proposals
      resources :messages
    end
  end
end
