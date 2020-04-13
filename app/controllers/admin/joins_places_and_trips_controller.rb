class JoinsPlacesAndTripsController < ApplicationController


  before_action :set_joins_places_and_trips, only: [:show, :edit, :update, :destroy]
  before_action :set_trip, only: [:create]


    def index

    end


    def show
    end


    def new
      @joins= JoinsPlacesAndTrip.new
    end


    def edit
    end


    def create
      place = Place.find(params[:place_id])
      @place_trip = @trip.add_place(place)

      respond_to do |format|
        if @place_trip.save
          format.html { redirect_to @place_trip.trip, notice: 'place added to trip.' }
          # format.json { render :show, status: :created, location: @place_trip }
        else
          format.html { render :new }
          # format.json { render json: @place_trip.errors, status: :unprocessable_entity }
        end
      end
    end


    def update
      respond_to do |format|
        if @place_trip.update(place_trip_params)
          format.html { redirect_to @place_trip, notice: 'place  was successfully updated.' }
          # format.json { render :show, status: :ok, location: @place_trip }
        else
          format.html { render :edit }
          # format.json { render json: @place_trip.errors, status: :unprocessable_entity }
        end
      end
    end


    def destroy
      @trip = trip.find(session[:trip_id])
      @place_trip.destroy
      respond_to do |format|
        format.html { redirect_to trip_path(@trip), notice: 'place successfully removed.' }
        # format.json { head :no_content }
      end
    end

    private

      def set_joins_places_and_trips
        @joins = JoinsPlacesAndTrip.find(params[:id])
      end


      def joins_places_and_trips_params
        params.require(:joins_places_and_trips).permit(:place_id)
      end


end
