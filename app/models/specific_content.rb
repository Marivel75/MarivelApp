class SpecificContent < ApplicationRecord

  has_one_attached :specific_content_picture

  has_many :join_specific_content_to_places
  has_many :places, through: :join_specific_content_to_places
  
end
