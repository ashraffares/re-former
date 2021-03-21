Rails.application.routes.draw do
  resources :users, only: [:new, :create, :edit, :update,:show, :index]
  root 'users#show'
end