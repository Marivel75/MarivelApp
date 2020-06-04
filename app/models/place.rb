class Place < ApplicationRecord
  acts_as_ordered_taggable_on :tags

  searchkick

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



  def found_address_presence
    if latitude.blank? || longitude.blank?
      errors.add(:address, "We couldn't find the address")
    end
  end

  def search_data
    {name: name,
    subtitle: subtitle,
    description: description
    }
  end

end
