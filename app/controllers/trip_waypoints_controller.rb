class TripWaypointsController < ApplicationController
  before_action :set_trip_waypoint, only: [:show, :edit, :update, :destroy]

  # GET /trip_waypoints
  # GET /trip_waypoints.json
  def index
    @trip_waypoints = TripWaypoint.all
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
    @trip_waypoint = TripWaypoint.new(trip_waypoint_params)

    respond_to do |format|
      if @trip_waypoint.save
        format.html { redirect_to @trip_waypoint, notice: 'Trip waypoint was successfully created.' }
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
    respond_to do |format|
      if @trip_waypoint.update(trip_waypoint_params)
        format.html { redirect_to @trip_waypoint, notice: 'Trip waypoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip_waypoint }
      else
        format.html { render :edit }
        format.json { render json: @trip_waypoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_waypoints/1
  # DELETE /trip_waypoints/1.json
  def destroy
    @trip_waypoint.destroy
    respond_to do |format|
      format.html { redirect_to trip_waypoints_url, notice: 'Trip waypoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_waypoint
      @trip_waypoint = TripWaypoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trip_waypoint_params
      params.require(:trip_waypoint).permit(:place_id, :trip_id)
    end
end
