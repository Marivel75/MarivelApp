Rails.application.routes.draw do
  
  resources :partners
  resources :travelers
  devise_for :users
  resources :places
  resources :categories
  resources :trips do
    resources :trip_pictures, only: [:create]
  end

  root to: "trips#index"

  namespace :admin do
    resources :users
    resources :trips
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
