Rails.application.routes.draw do


  resources :place_tags
  root to: "trips#index"

  get 'searchplaces', to: "places#search"

  get 'searchtrips', to: "trips#search"

  devise_for :users

  resources :categories, only: [:show]

  resources :trips do
    resources :saved_trips, only: [:create, :destroy]
    # resources :places
    resources :trip_waypoints, as: 'waypoint'
    resources :trip_pictures, only: [:create]
  end

  resources :places, except: [:destroy] do
    resources :join_tag_to_places
  end

  resources :users, except: [:index, :destroy] do
    resources :trips
  end


  scope 'admin', module: 'admin',  as: 'admin' do
    get 'admin', to: 'static#admin'

    resources :users, only: [:index, :show]
    resources :categories, except: [:destroy]

    resources :places, except: [:destroy] do
      resources :tags, only: [:index]
    end


    resources :trips, except: [:destroy] do
      # resources :places, except: [:destroy]
      resources :trip_pictures, only: [:create], as: 'picture'
      resources :trip_waypoints, only: [:index, :new, :create, :destroy], as: 'waypoint'
    end
  end


  scope 'partner', module: 'partner', as: 'partner' do
    resources :users, only: [:show, :edit, :update]
    resources :places, only: [:show]

    resources :trips, only: [:index, :show]
      # resources :trip_pictures, only: [:create], as: 'picture'
      # resources :trip_waypoints, only: [:index, :new, :create, :destroy], as: 'waypoint'
    end

end
