class PlaceTag < ApplicationRecord

  has_many :join_tag_to_places
  has_many :places, through: :join_tag_to_places

end
