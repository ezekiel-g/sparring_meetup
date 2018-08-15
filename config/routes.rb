Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :users, except: [:show]
  resources :proposals, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :messages

  namespace :api do
    namespace :v1 do
      resources :users
      resources :proposals
      resources :messages
      resources :chats
      namespace :search do
        post 'proposals/search', to: 'proposals#search'
      end
    end
  end
end
