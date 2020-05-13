class PlaceTagsController < ApplicationController
  before_action :set_place_tag, only: [:show, :edit, :update, :destroy]

  # GET /place_tags
  # GET /place_tags.json
  def index
    @place_tags = PlaceTag.all
  end

  # GET /place_tags/1
  # GET /place_tags/1.json
  def show
  end

  # GET /place_tags/new
  def new
    @place_tag = PlaceTag.new
  end

  # GET /place_tags/1/edit
  def edit
  end

  # POST /place_tags
  # POST /place_tags.json
  def create
    @place_tag = PlaceTag.new(place_tag_params)

    respond_to do |format|
      if @place_tag.save
        format.html { redirect_to @place_tag, notice: 'Place tag was successfully created.' }
        format.json { render :show, status: :created, location: @place_tag }
      else
        format.html { render :new }
        format.json { render json: @place_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_tags/1
  # PATCH/PUT /place_tags/1.json
  def update
    respond_to do |format|
      if @place_tag.update(place_tag_params)
        format.html { redirect_to @place_tag, notice: 'Place tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_tag }
      else
        format.html { render :edit }
        format.json { render json: @place_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_tags/1
  # DELETE /place_tags/1.json
  def destroy
    @place_tag.destroy
    respond_to do |format|
      format.html { redirect_to place_tags_url, notice: 'Place tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_tag
      @place_tag = PlaceTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def place_tag_params
      params.require(:place_tag).permit(:name)
    end
end
