class Place < ApplicationRecord
  acts_as_taggable_on :tags

  geocoded_by :address do |object, results|
    if results.present?
     object.latitude = results.first.latitude
     object.longitude = results.first.longitude
    else
     object.latitude = nil
     object.longitude = nil
    end
  end

  before_validation :geocode, if: :address_changed?
  validates :name, :address, presence: true
  validate :found_address_presence

  belongs_to :author, class_name: 'User', optional: true

  has_many :trip_waypoints
  has_many :trips, through: :trip_waypoints

  has_one_attached :place_picture

  has_many :join_tag_to_places
  has_many :place_tags, through: :join_tag_to_places

  has_many :join_region_to_places
  has_many :regions, through: :join_region_to_places


  def found_address_presence
    if latitude.blank? || longitude.blank?
      errors.add(:address, "Nous n'avons pas pu localiser l'adresse.")
    end
  end



  # searchkick suggest: [:name], language: "french", match: :word_middle
  #
  # def search_data
  #   {name: name,
  #   subtitle: subtitle,
  #   description: description
  #   }
  # end

end
