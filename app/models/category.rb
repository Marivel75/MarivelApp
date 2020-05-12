class Category < ApplicationRecord

  has_many :trips

  searchkick

end
