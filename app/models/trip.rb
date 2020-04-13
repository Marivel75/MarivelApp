class Trip < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :category

  has_many :saved_trips, dependent: :destroy

  has_many :joins_places_and_trips
  has_many :places, through: :joins_places_and_trips


  has_one_attached :trip_picture

  validates :title, :description, presence: true


  scope :published, -> { where(online: true) }
  scope :offline, -> { where(online: false) }

end
