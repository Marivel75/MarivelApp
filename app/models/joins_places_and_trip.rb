class JoinsPlacesAndTrip < ApplicationRecord
  belongs_to :trip
  belongs_to :place
end
