module Admin

  class TripWaypointsController < ApplicationController
    before_action :only_admin
    # before_action :set_trip
    #  before_action :set_trip_waypoint, only: [:show, :edit, :update, :destroy]


    # GET /trip_waypoints
    # GET /trip_waypoints.json
    def index
      @places = Place.all
    end

    # GET /trip_waypoints/1
    # GET /trip_waypoints/1.json
    def show
    end

    # GET /trip_waypoints/new
    def new
      @trip_waypoint = TripWaypoint.new
    end

    # GET /trip_waypoints/1/edit
    def edit
    end

    # POST /trip_waypoints
    # POST /trip_waypoints.json
    def create
      puts "=================================="
      puts params
      puts "trip_id = #{params[:trip_id]}"
      puts "place_id = #{params[:place_id]}"
      puts "=================================="

      @trip_waypoint = TripWaypoint.new
      @trip_waypoint.place_id = params[:place_id]
      @trip_waypoint.trip_id = params[:trip_id]
      @trip_waypoint.save

      respond_to do |format|
        if @trip_waypoint.save
          format.html { redirect_to admin_trip_path(params[:trip_id]), notice: "Le lieu a été ajouté à l'itinéraire" }
        # format.json { render :show, status: :created, location: @trip_waypoint }
        else
          format.html { render :new }
        # format.json { render json: @trip_waypoint.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /trip_waypoints/1
    # PATCH/PUT /trip_waypoints/1.json
    def update
      respond_to do |format|
        if @trip_waypoint.update(trip_waypoint_params)
          format.html { redirect_to @trip_waypoint, notice: 'Trip waypoint was successfully updated.' }
          # format.json { render :show, status: :ok, location: @trip_waypoint }
        else
          format.html { render :edit }
          # format.json { render json: @trip_waypoint.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /trip_waypoints/1
    # DELETE /trip_waypoints/1.json
    def destroy
      puts "=================================="
      puts params
      puts "trip_id = #{params[:trip_id]}"
      puts "place_id = #{params[:place_id]}"
      puts "=================================="
      @trip_waypoint = TripWaypoint.find(params[:id])
      puts "=================#{trip_waypoint}======================"
      # @trip_waypoint.place_id = params[:place_id]
      # @trip_waypoint.trip_id = params[:trip_id]
      @trip_waypoint.destroy
      respond_to do |format|
        format.html { redirect_to admin_trip_path(@trip[:id]), notice: 'Le lieu a été retiré de cet itinéraire.' }
        #format.json { head :no_content }
      end
    end

    private

      def only_admin
        if !user_signed_in? || current_user.role != 'admin'
          redirect_to root_path, alert: "Accès non autorisé"
        end
      end

      def set_trip_waypoint
        @trip_waypoint = TripWaypoint.where(params[:place_id], params[:trip_id])
      end

      def trip_waypoint_params
        params.require(:trip_waypoint).permit(:place_id, :trip_id)
      end
  end

end
