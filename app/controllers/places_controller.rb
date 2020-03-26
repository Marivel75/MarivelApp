class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  before_action :is_current_user?, only: [:edit, :update, :new, :create]

  # GET /places
  # GET /places.json
  def index
    @places = Place.all
  end

  # GET /places/1
  # GET /places/1.json
  def show
    gon.place = @place
  end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit
  end

  # POST /places
  # POST /places.json
  def create
    @place = Place.new(place_params)
    @trip = Trip.find(params[:trip_id])
    @place.trips << @trip 
    @place.author = current_user
    respond_to do |format|
      if @place.save
        format.html { redirect_to [@trip], notice: 'Le lieu a été crée.' }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    puts place_params
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to [@trip, @place], notice: 'Les modifications ont été enregistrées.' }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place.destroy
    respond_to do |format|
      format.html { redirect_to @trip, notice: 'Le lieu a été supprimé.' }
      format.json { head :no_content }

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @trip = Trip.find(params[:trip_id])
      @place = Place.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def place_params
      params.require(:place).permit(:name, :address, :description, :subtitle, :price, :website, :phone, :price_2, :place_picture)
    end

    def is_current_user?
      if !current_user || @trip.author != current_user
        redirect_to new_user_session_path
      end
    end
end
