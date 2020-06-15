class AddAttributionPhotoToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :attribution_photo, :string
  end
end
