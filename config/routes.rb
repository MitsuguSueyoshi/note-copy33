Rails.application.routes.draw do
 root 'notes#index'
 resources :notes, only: [:index, :show, :new]
end
