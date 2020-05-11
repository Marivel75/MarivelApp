Rails.application.routes.draw do

  root to: "trips#index"

  get 'search', to: "places#search"

  devise_for :users

  resources :categories, only: [:show]
  resources :trips do
    resources :saved_trips
    resources :places
    resources :trip_waypoints, as: 'waypoint'
    resources :trip_pictures, only: [:create]
  end

  resources :places

  resources :users do
    resources :trips
  end




  scope 'admin', module: 'admin',  as: 'admin' do
    get 'admin', to: 'static#admin'

    resources :users, only: [:index, :show]
    resources :categories, except: [:destroy]
    resources :places, except: [:destroy]

    resources :trips, except: [:destroy] do
      # resources :places, except: [:destroy]
      resources :trip_pictures, only: [:create], as: 'picture'
      resources :trip_waypoints, only: [:index, :new, :create, :destroy], as: 'waypoint'
    end
  end




  scope 'partner', module: 'partner', as: 'partner' do
    resources :users, only: [:show, :edit, :update]
    resources :places, except: [:destroy]

    resources :trips do
      resources :places
      resources :trip_pictures, only: [:create], as: 'picture'
      resources :trip_waypoints, as: 'waypoint'
    end
  end

end
