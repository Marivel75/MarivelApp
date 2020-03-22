class Place < ApplicationRecord

  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  has_and_belongs_to_many :trips

end
