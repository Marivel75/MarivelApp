class TripPicturesController < ApplicationController

  def create
  @trip = trip.find(params[:trip_id])
   @trip.trip_picture.attach(params[:trip_picture])
   redirect_to(trip_path(@trip))
  end

end
