class CreateJoinRegionToPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :join_region_to_places do |t|
      t.references :place, foreign_key: true
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
