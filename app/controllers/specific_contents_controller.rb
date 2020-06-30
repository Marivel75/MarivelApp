class SpecificContentsController < ApplicationController
  before_action :set_specific_content, only: [:show, :edit, :update, :destroy]

  # GET /specific_contents
  # GET /specific_contents.json
  def index
    @specific_contents = SpecificContent.all
  end

  # GET /specific_contents/1
  # GET /specific_contents/1.json
  def show
  end

  # GET /specific_contents/new
  def new
    @specific_content = SpecificContent.new
  end

  # GET /specific_contents/1/edit
  def edit
  end

  # POST /specific_contents
  # POST /specific_contents.json
  def create
    @specific_content = SpecificContent.new(specific_content_params)

    respond_to do |format|
      if @specific_content.save
        format.html { redirect_to @specific_content, notice: 'Specific content was successfully created.' }
        format.json { render :show, status: :created, location: @specific_content }
      else
        format.html { render :new }
        format.json { render json: @specific_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specific_contents/1
  # PATCH/PUT /specific_contents/1.json
  def update
    respond_to do |format|
      if @specific_content.update(specific_content_params)
        format.html { redirect_to @specific_content, notice: 'Specific content was successfully updated.' }
        format.json { render :show, status: :ok, location: @specific_content }
      else
        format.html { render :edit }
        format.json { render json: @specific_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specific_contents/1
  # DELETE /specific_contents/1.json
  def destroy
    @specific_content.destroy
    respond_to do |format|
      format.html { redirect_to specific_contents_url, notice: 'Specific content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific_content
      @specific_content = SpecificContent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def specific_content_params
      params.require(:specific_content).permit(:title, :subtitle, :content, :external_link)
    end
end
