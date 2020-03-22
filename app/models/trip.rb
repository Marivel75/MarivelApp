class Trip < ApplicationRecord

  belongs_to :category

  has_and_belongs_to_many :places


end
