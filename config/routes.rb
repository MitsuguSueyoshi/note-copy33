Rails.application.routes.draw do
 devise_for :users
 root 'notes#index'
 resources :users, only: [:edit, :update]
 resources :notes
end
