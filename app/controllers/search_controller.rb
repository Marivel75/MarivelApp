class SearchController < ApplicationController

  def index
    query = params[:q].presence || "*"
    @trips = Trip.search(query, suggest: :true)
    @places = Place.search(query, suggest: :true)
  end
end
