class User < ApplicationRecord
  has_many :created_trips, foreign_key: "author_id", class_name: "Trip"

  after_create :welcome_send

  attr_accessor :login

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :first_name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable



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
