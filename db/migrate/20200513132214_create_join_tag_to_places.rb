class CreateJoinTagToPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :join_tag_to_places do |t|
      t.references :place, foreign_key: true
      t.references :place_tag, foreign_key: true

      t.timestamps
    end
  end
end
