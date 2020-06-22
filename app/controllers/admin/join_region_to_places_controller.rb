module Admin
  class JoinRegionToPlacesController < ApplicationController
    before_action :only_admin
    before_action :set_join_region_to_place, only: [:show, :edit, :update, :destroy]

    # GET /join_region_to_places
    # GET /join_region_to_places.json
    def index
      @regions = Region.all
    end

    # GET /join_region_to_places/1
    # GET /join_region_to_places/1.json
    def show
    end

    # GET /join_region_to_places/new
    def new
      @join_region_to_place = JoinRegionToPlace.new
    end

    # GET /join_region_to_places/1/edit
    def edit
    end

    # POST /join_region_to_places
    # POST /join_region_to_places.json
    def create
      @join_region_to_place = JoinRegionToPlace.new(join_region_to_place_params)
      # @join_region_to_place.place_id = params[:place_id]
      # @join_region_to_place.region_id = params[:region_id]

      respond_to do |format|
        if @join_region_to_place.save
          format.html { redirect_to @join_region_to_place, notice: 'Join region to place was successfully created.' }
          format.json { render :show, status: :created, location: @join_region_to_place }
        else
          format.html { render :new }
          format.json { render json: @join_region_to_place.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /join_region_to_places/1
    # PATCH/PUT /join_region_to_places/1.json
    def update
      respond_to do |format|
        if @join_region_to_place.update(join_region_to_place_params)
          format.html { redirect_to @join_region_to_place, notice: 'Join region to place was successfully updated.' }
          format.json { render :show, status: :ok, location: @join_region_to_place }
        else
          format.html { render :edit }
          format.json { render json: @join_region_to_place.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /join_region_to_places/1
    # DELETE /join_region_to_places/1.json
    def destroy
      @join_region_to_place.destroy
      respond_to do |format|
        format.html { redirect_to join_region_to_places_url, notice: 'Join region to place was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_join_region_to_place
        @join_region_to_place = JoinRegionToPlace.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def join_region_to_place_params
        params.require(:join_region_to_place).permit(:place_id, :region_id)
      end

      def only_admin
        if !user_signed_in? || current_user.role != 'admin'
          redirect_to root_path, alert: "Accès non autorisé"
        end
      end

  end

end
