class Trip < ApplicationRecord
  acts_as_ordered_taggable_on :tags
  
  belongs_to :author, class_name: 'User'
  belongs_to :category

  has_many :saved_trips, dependent: :destroy

  has_many :trip_waypoints, dependent: :destroy
  has_many :places, through: :trip_waypoints


  has_one_attached :trip_picture

  validates :title, :description, presence: true


  scope :published, -> { where(online: true) }
  scope :offline, -> { where(online: false) }

  searchkick

  def search_data
    attributes.merge(
      category_name: category(&:name),
      places_name: places.map(&:name)
    )
  end

end
