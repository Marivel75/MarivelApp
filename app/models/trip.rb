class Trip < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :category
  has_many :saved_trips, dependent: :destroy
  has_and_belongs_to_many :places
  has_one_attached :trip_picture
  validates :title, :description, presence: true

  # default_scope { order(created_at: :desc) }
  scope :published, -> { where(online: true) }
  scope :offline, -> { where(online: false) }

end
