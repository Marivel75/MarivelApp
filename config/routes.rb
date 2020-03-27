Rails.application.routes.draw do

  resources :partners
  resources :travelers
  devise_for :users
  resources :categories
  resources :trips do
    resources :saved_trips
    resources :places
    resources :trip_pictures, only: [:create]
  end

  resources :places
  
  root to: "trips#index"

  resources :users do
    resources :trips
  end

  namespace :admin do
    resources :users
    resources :trips
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
