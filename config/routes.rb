Rails.application.routes.draw do

  # resources :trip_waypoints

  devise_for :users
  resources :categories, only: [:show]
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
    get 'admin', to: 'static#admin'

    resources :users, except: [:create]
    resources :categories

    resources :places

    resources :trips do
      resources :places
      resources :trip_pictures, only: [:create], as: 'picture'
      resources :trip_waypoints, as: 'waypoint'
    end
  end


  scope 'partner', module: 'partner', as: 'partner' do
    resources :users, only: [:show, :edit, :update]

    resources :places

    resources :trips do
      resources :places
      resources :trip_pictures, only: [:create], as: 'picture'
      resources :trip_waypoints, as: 'waypoint'
    end
  end

end
