class JoinRegionToPlace < ApplicationRecord
  belongs_to :place
  belongs_to :region
end
