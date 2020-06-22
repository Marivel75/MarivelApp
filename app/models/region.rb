class Region < ApplicationRecord
  has_many :join_region_to_places
  has_many :places, through: :join_region_to_places
end
