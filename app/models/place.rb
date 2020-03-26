class Place < ApplicationRecord
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
  validates :address, presence: true
  validate :found_address_presence
  belongs_to :author, class_name: 'User'

  has_and_belongs_to_many :trips
  has_one_attached :place_picture
  
  def found_address_presence
    if latitude.blank? || longitude.blank?
      errors.add(:address, "We couldn't find the address")
    end
  end
end
