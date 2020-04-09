Rails.application.routes.draw do

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

  scope 'admin', module: 'admin',  as: 'admin' do
    resources :users 
  end


end
