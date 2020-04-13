class CreateJoinsPlacesAndTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :joins_places_and_trips do |t|
      t.belongs_to :trip, index: true
      t.belongs_to :place, index: true
    end
  end
end
