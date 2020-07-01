class JoinSpecificContentToPlace < ApplicationRecord
  belongs_to :place
  belongs_to :specific_content
end
