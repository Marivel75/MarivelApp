class Trip < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :category

  has_many :saved_trips, dependent: :destroy

  has_many :trip_waypoints, dependent: :destroy
  has_many :places, through: :trip_waypoints


  has_one_attached :trip_picture

  validates :title, :description, presence: true


  scope :published, -> { where(online: true) }
  scope :offline, -> { where(online: false) }

end
