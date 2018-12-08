Rails.application.routes.draw do
 devise_for :users
 root 'notes#index'
 resources :users, only: [:show, :edit, :update] do
   resources :magazines
 end
 resources :notes
 resources :relationships, only: [:create, :destroy]
 resources :mynotes, only: [:index] do
   collection do
     delete 'destroy_all'
   end
 end
end
