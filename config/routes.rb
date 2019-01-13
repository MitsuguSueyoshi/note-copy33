Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root 'notes#index'
  resources :images, only: [:index]
  resources :users, only: [:show, :edit, :update] do
   resources :magazines
   member do
      get :followings
      get :followers
   end
  end
  resources :notes do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  resources :relationships, only: [:create, :destroy]
  resources :mylikes, only: [:index]
  resources :mynotes, only: [:index] do
   collection do
     delete 'destroy_all'
   end
 end
  resources :helps, only:[:index]
  resources :articles , only: [:create, :destroy]
  resources :categories, only: [:index]
  resources :wanted, only: [:index]
  resources :pickups, only: [:index]
  resources :attentions, only: [:index]
  resources :headermagazines, only: [:index] do
    collection do
      get 'magazine_all'
    end
  end
  resources :searches, only: [:index] do
    collection do
      get 'search_magazine'
      get 'search_user'
    end
  end
  resources :dashboards, only: [:index]
  resources :recommends, only: [:index]
end
