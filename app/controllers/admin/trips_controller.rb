module Admin

  class TripsController < ApplicationController
    before_action :only_admin
    before_action :set_trip, only: [:show, :edit, :update, :destroy]


    # GET /trips
    # GET /trips.json
    def index
      @trips = Trip.includes(:category).all
    end

    # GET /trips/1
    # GET /trips/1.json
    def show

    end

    # GET /trips/new
    def new
      @trip = Trip.new
      @categories = Category.all.map{|c| [ c.name, c.id ] }
    end

    # GET /trips/1/edit
    def edit
      @place = Place.new
      @categories = Category.all.map{|c| [ c.name, c.id ] }
    end

    # POST /trips
    # POST /trips.json
    def create
      @trip = Trip.new(trip_params)
      @trip.category_id = params[:category_id]
      @trip.author = current_user
      @categories = Category.all.map{|c| [ c.name, c.id ] }

      respond_to do |format|
        if @trip.save
          format.html { redirect_to edit_trip_url(@trip[:id]), notice: "L'itinéraire a été crée, vous pouvez maintenant ajouter des étapes." }
          # format.json { render :show, status: :created, location: @trip }
        else
          format.html { render :new }
          # format.json { render json: @trip.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /trips/1
    # PATCH/PUT /trips/1.json
    def update
      @trip.update(trip_params)
      # @trip.update_attribute(:online => params[:online])
      redirect_to trip_path(@trip), notice: "L'itinéraire a été modifié."

      # @trip.category_id = params[:category_id]
      # respond_to do |format|
      #   if @trip.update(trip_params)
      #     format.html { redirect_to trip_path(@trip[:id]), notice: 'Trip was successfully updated.' }
      #     format.json { render :show, status: :ok, location: @trip }
      #   else
      #     format.html { render :edit }
      #     format.json { render json: @trip.errors, status: :unprocessable_entity }
      #   end
      # end
    end


    # DELETE /trips/1
    # DELETE /trips/1.json
    def destroy
      @trip.destroy
      respond_to do |format|
        format.html { redirect_to admin_trips_path, notice: "L'itinéraire a été supprimé." }
        # format.json { head :no_content }
      end
    end

    private

      def only_admin
        if !user_signed_in? || current_user.role != 'admin'
          redirect_to root_path, alert: "Accès non autorisé"
        end
      end

      def set_trip
        if params[:id]
          @trip = Trip.find(params[:id])
          gon.places = @trip.places.all
        end
      end

      def trip_params
        params.require(:trip).permit(:title, :description, :category_id, :trip_picture, :online, :tag_list, :attribution_photo)
      end

  end

end
