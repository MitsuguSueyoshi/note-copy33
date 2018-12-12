Rails.application.routes.draw do
  devise_for :users
  root 'notes#index'
  resources :images, only: [:index]
  resources :users, only: [:show, :edit, :update] do
   resources :magazines
  end
  resources :notes do
    resources :likes, only: [:create, :destroy]
  end
  resources :relationships, only: [:create, :destroy]
  resources :mynotes, only: [:index] do
   collection do
     delete 'destroy_all'
   end
 end
  resources :helps, only:[:index]
  resources :articles , only: [:create, :destroy]
end
