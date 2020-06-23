class User < ApplicationRecord

  enum role: [:traveler, :partner, :admin]
  attr_accessor :login

  has_one_attached :avatar

  after_initialize do
    if self.new_record?
      self.role ||= :traveler
    end
  end

  after_create :welcome_send

  validates :first_name, presence: true

  has_many :created_trips, foreign_key: "author_id", class_name: "Trip"

  has_many :created_places, foreign_key: "author_id", class_name: "Place"

  has_many :saved_trips, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  scope :admin, -> { where(role: "admin") }

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where("lower(first_name) = :value OR lower(email) = :value", value: login.downcase).first
    else
      where(conditions.to_hash).first
    end
  end

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
