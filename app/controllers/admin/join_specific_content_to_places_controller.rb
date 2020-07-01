module Admin

  class JoinSpecificContentToPlacesController < ApplicationController
    before_action :only_admin
    before_action :set_join_specific_content_to_place, only: [:destroy]
    before_action :set_place

    # GET /join_specific_content_to_places
    # GET /join_specific_content_to_places.json
    def index
      @specific_contents = SpecificContent.all
    end

    # GET /join_specific_content_to_places/1
    # GET /join_specific_content_to_places/1.json
    def show
    end

    # GET /join_specific_content_to_places/new
    def new
      @join_specific_content_to_place = JoinSpecificContentToPlace.new
    end

    # GET /join_specific_content_to_places/1/edit
    def edit
    end

    # POST /join_specific_content_to_places
    # POST /join_specific_content_to_places.json
    def create
      @join_specific_content_to_place = JoinSpecificContentToPlace.new
      @join_specific_content_to_place.place_id = params[:place_id]
      @join_specific_content_to_place.specific_content_id = params[:specific_content_id]

      respond_to do |format|
        if @join_specific_content_to_place.save
          format.html { redirect_to edit_admin_place_path(@place), notice: 'Le contenu a été ajouté au lieu.' }
          format.json { render :show, status: :created, location: @join_specific_content_to_place }
        else
          format.html { render :new }
          format.json { render json: @join_specific_content_to_place.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /join_specific_content_to_places/1
    # PATCH/PUT /join_specific_content_to_places/1.json
    def update
      respond_to do |format|
        if @join_specific_content_to_place.update(join_specific_content_to_place_params)
          format.html { redirect_to @join_specific_content_to_place, notice: 'Join specific content to place was successfully updated.' }
          format.json { render :show, status: :ok, location: @join_specific_content_to_place }
        else
          format.html { render :edit }
          format.json { render json: @join_specific_content_to_place.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /join_specific_content_to_places/1
    # DELETE /join_specific_content_to_places/1.json
    def destroy
      @join_specific_content_to_place.destroy
      respond_to do |format|
        format.html { redirect_to join_specific_content_to_places_url, notice: 'Join specific content to place was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_join_specific_content_to_place
        @join_specific_content_to_place = JoinSpecificContentToPlace.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def join_specific_content_to_place_params
        params.require(:join_specific_content_to_place).permit(:place_id, :specific_content_id)
      end

      def set_place
        @place = Place.find(params[:place_id])
      end

      def only_admin
        if !user_signed_in? || current_user.role != 'admin'
          redirect_to root_path, alert: "Accès non autorisé"
        end
      end
  end

end
