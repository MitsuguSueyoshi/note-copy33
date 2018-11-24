Rails.application.routes.draw do
  devise_for :users
 root 'notes#index'
 resources :notes, only: [:index, :show]
 resources :users, only: [:show]
 resources :relationships, only: [:create, :destroy]
end
