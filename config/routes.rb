Rails.application.routes.draw do
 devise_for :users
 root 'notes#index'
 resources :notes, only: [:show, :new, :create]
 resources :users, only: [:show]
 resources :relationships, only: [:create, :destroy]
end
