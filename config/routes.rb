Rails.application.routes.draw do
 devise_for :users
 root 'notes#index'
 resources :users, only: [:show, :edit, :update]
 resources :notes
 resources :relationships, only: [:create, :destroy]
end
