Rails.application.routes.draw do
  devise_for :users
  root 'notes#index'
  resources :users, only: [:show, :edit, :update]
  resources :notes, only: [:show, :new, :create]
  resources :relationships, only: [:create, :destroy]
  resources :magazines
end
