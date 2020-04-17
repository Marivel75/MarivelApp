module Admin


  class TripStatusController

    def index
      @trips = Trip.includes(:category).all
    end

    def show

    end

    def edit

    end

    def update

    end

  end


end
