Rails.application.routes.draw do



  resources :join_region_to_places
  root to: 'trips#index'

  get 'search', to: "search#index"

  get 'map', to: "map#show"

  devise_for :users

  resources :categories, only: [:show]

  resources :trips do
    resources :saved_trips, only: [:create, :destroy]
    # resources :places
    resources :trip_waypoints, as: 'waypoint'
    resources :trip_pictures, only: [:create]
  end

  resources :places, except: [:destroy]

  resources :tags, only: [:index]

  resources :users, only: [:show, :edit, :update] do
    resources :trips
    resources :avatars, only: [:create]
  end


  scope 'admin', module: 'admin',  as: 'admin' do
    get 'admin', to: 'static#admin'

    resources :users, only: [:index, :edit, :update]

    resources :categories, except: [:destroy]

    resources :places, only: [:index, :new, :edit, :update]

    resources :tags, only: [:index]

    resources :regions

    resources :trips, only: [:index, :new, :edit, :update] do
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
