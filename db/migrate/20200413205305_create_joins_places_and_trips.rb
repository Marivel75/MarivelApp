class CreateJoinsPlacesAndTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :joins_places_and_trips do |t|
      t.integer :place_id
      t.integer :trip_id
      t.timestamps
    end
  end
end
