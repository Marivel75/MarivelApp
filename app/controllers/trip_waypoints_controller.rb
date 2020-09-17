class TripWaypointsController < ApplicationController
  before_action :set_trip_waypoint, only: [:edit, :update, :destroy]
  before_action :set_trip, except: [:edit, :update, :destroy]


  # GET /trip_waypoints
  # GET /trip_waypoints.json
  def index
    @places = Place.where(online: true).or(Place.where(author: current_user))
  end

  # GET /trip_waypoints/1
  # GET /trip_waypoints/1.json
  def show
    gon.trip_waypoints = []
    @trip.trip_waypoints.each do |n|
      gon.trip_waypoints.push(n.place.name)
    end
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
    @trip_waypoint = TripWaypoint.new
    @trip_waypoint.place_id = params[:place_id]
    @trip_waypoint.trip_id = params[:trip_id]
    @trip_waypoint.save


    respond_to do |format|
      if @trip_waypoint.save
        format.html { redirect_to edit_admin_trip_path(@trip), notice: "Le lieu a été ajouté à l'itinéraire." }
        format.json { render :show, status: :created, location: @trip_waypoint }
      else
        format.html { render :new }
        format.json { render json: @trip_waypoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_waypoints/1
  # PATCH/PUT /trip_waypoints/1.json
  def update
    @trip_waypoint.update(trip_waypoint_params)
    redirect_to edit_admin_trip_path(@trip_waypoint.trip.id), notice: "La position de l'étape a été enregistrée."
    # respond_to do |format|
    #   if @trip_waypoint.update(trip_waypoint_params)
    #     format.html { redirect_to @trip_waypoint, notice: 'Trip waypoint was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @trip_waypoint }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @trip_waypoint.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /trip_waypoints/1
  # DELETE /trip_waypoints/1.json
  def destroy
    @trip_waypoint.destroy
    respond_to do |format|
      format.html { redirect_to edit_admin_trip_path(@trip_waypoint.trip.id), notice: "L'étape a été supprimée." }
      format.json { head :no_content }
    end
  end



  private


    def set_trip
      @trip = Trip.find(params[:trip_id])
    end

    def set_trip_waypoint
      @trip_waypoint = TripWaypoint.find(params[:id])
    end


    def trip_waypoint_params
      params.require(:trip_waypoint).permit(:place_id, :trip_id, :rank)
    end
end
