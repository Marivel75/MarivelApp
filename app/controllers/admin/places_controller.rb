module Admin

  class PlacesController < ApplicationController
    before_action :only_admin
    before_action :set_place, only: [:show, :edit, :update, :destroy]

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
      # @trip = Trip.find(params[:trip_id])
      # @trip.places << @place
      # @place.author = current_user
      respond_to do |format|
        if @place.save
          format.html { redirect_to admin_places_path, notice: 'Le lieu a été crée.' }
          # format.json { render :show, status: :created, location: @place }
        else
          format.html { render :new }
          # format.json { render json: @place.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /places/1
    # PATCH/PUT /places/1.json
    def update
      respond_to do |format|
        if @place.update(place_params)
          format.html { redirect_to place_path(@place[:id]), notice: 'Les modifications ont été enregistrées.' }
          # format.json { render :show, status: :ok, location: @place }
        else
          format.html { render :edit }
          # format.json { render json: @place.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /places/1
    # DELETE /places/1.json
    # def destroy
    #   @place.destroy
    #   respond_to do |format|
    #     format.html { redirect_to admin_places_path, notice: 'Le lieu a été supprimé.' }
    #     # format.json { head :no_content }
    #   end
    # end

    private

      def only_admin
        if !user_signed_in? || current_user.role != 'admin'
          redirect_to root_path, alert: "Accès non autorisé"
        end
      end

      def set_place
        # @trip = Trip.find(params[:trip_id])
        @place = Place.find(params[:id])
      end

      def place_params
        params.require(:place).permit(:name, :address, :latitude, :longitude, :description, :subtitle, :price, :website, :phone, :price_2, :place_picture, :tag_list, :attribution, :online, :city)
      end

  end

end
