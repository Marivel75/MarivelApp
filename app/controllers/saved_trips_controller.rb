class SavedTripsController < ApplicationController
  before_action :find_trip
  before_action :find_saved_trip, only: [:destroy]

 def create
  if already_saved?
    flash[:notice] = "Vous avez deja sauvegardé le trip !"
  else
    @trip.saved_trips.create(user_id: current_user.id)
  end
  redirect_to trip_path(@trip)
  end

  def destroy
     puts already_saved?
    if !(already_saved?)
      flash[:notice] = "Le trip n'est pas enregistré dans vos favoris"
    else
      @saved_trip.destroy
    end
    redirect_to trip_path(@trip)
  end
  private

  def find_trip
    @trip = Trip.find(params[:trip_id])
  end

  def already_saved?
    SavedTrip.where(user_id: current_user.id, trip_id:
    params[:trip_id]).exists?
  end
  
  def find_saved_trip
    @saved_trip = @trip.saved_trips.find(params[:id])
    puts "@@@@@@@@@@@@"
    puts @saved_trip.user.email 
    puts @saved_trip.trip.title
 end
end
