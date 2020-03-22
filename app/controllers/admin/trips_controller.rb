class Admin::TripsController < AdminController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

	def index
		@trips = Trip.includes(:category).all
	end

  def edit
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

	def update

		if @trip.update(trip_params)

		flash[:success] = "trip successfully modified!"

		redirect_to trip_path
  	else
  		render 'edit'
  	end
end

  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_trip
    @trip = Trip.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def trip_params
    params.require(:trip).permit(:title, :description, :category_id)
  end


end
