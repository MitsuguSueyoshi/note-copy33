Rails.application.routes.draw do
 devise_for :users
 root 'notes#index'
 resources :users, only: [:show, :edit, :update] do
   resources :magazines
 end
 resources :notes
 resources :relationships, only: [:create, :destroy]
 resources :images, only: [:index]
end
