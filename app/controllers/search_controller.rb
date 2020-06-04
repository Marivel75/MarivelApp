class SearchController < ApplicationController

  def index
    query = params[:q].presence || "*"
    @trips = Trip.search(query)
    @places = Place.search(query)
  end
end
