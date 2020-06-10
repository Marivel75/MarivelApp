class AddAttributionPhotoToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :attribution, :string
  end
end
