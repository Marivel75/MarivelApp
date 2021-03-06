class SearchController < ApplicationController

  # Code pour Ransack
  def index
    query = params[:q]
    @trips = Trip.published.ransack(title_or_description_or_places_name_cont: query).result(distinct: true)
    @places = Place.published_place.ransack(name_or_city_or_subtitle_or_description_or_regions_name_cont: query).result(distinct: true)
  end

  # Code pour Searchkick
  # def index
  #   query = params[:q].presence || "*"
  #   @trips = Trip.search(query, suggest: :true)
  #   @places = Place.search(query, suggest: :true)
  # end
end
