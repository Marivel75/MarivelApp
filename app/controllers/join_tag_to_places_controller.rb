class JoinTagToPlacesController < ApplicationController
  # before_action :set_join_tag_to_place, only: [:show, :edit, :update, :destroy]

  # GET /join_tag_to_places
  # GET /join_tag_to_places.json
  def index
    @place_tags = PlaceTag.all
    # @join_tag_to_places = JoinTagToPlace.all
  end

  # GET /join_tag_to_places/1
  # GET /join_tag_to_places/1.json
  def show
  end

  # GET /join_tag_to_places/new
  def new
    @join_tag_to_place = JoinTagToPlace.new
  end

  # GET /join_tag_to_places/1/edit
  def edit
  end

  # POST /join_tag_to_places
  # POST /join_tag_to_places.json
  def create
    @join_tag_to_place = JoinTagToPlace.new(join_tag_to_place_params)

    respond_to do |format|
      if @join_tag_to_place.save
        format.html { redirect_to @join_tag_to_place, notice: 'Join tag to place was successfully created.' }
        format.json { render :show, status: :created, location: @join_tag_to_place }
      else
        format.html { render :new }
        format.json { render json: @join_tag_to_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_tag_to_places/1
  # PATCH/PUT /join_tag_to_places/1.json
  def update
    respond_to do |format|
      if @join_tag_to_place.update(join_tag_to_place_params)
        format.html { redirect_to @join_tag_to_place, notice: 'Join tag to place was successfully updated.' }
        format.json { render :show, status: :ok, location: @join_tag_to_place }
      else
        format.html { render :edit }
        format.json { render json: @join_tag_to_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_tag_to_places/1
  # DELETE /join_tag_to_places/1.json
  def destroy
    @join_tag_to_place.destroy
    respond_to do |format|
      format.html { redirect_to join_tag_to_places_url, notice: 'Join tag to place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_tag_to_place
      @join_tag_to_place = JoinTagToPlace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def join_tag_to_place_params
      params.fetch(:join_tag_to_place, {})
    end
end
