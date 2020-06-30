class CreateJoinSpecificContentToPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :join_specific_content_to_places do |t|
      t.references :place, foreign_key: true
      t.references :specific_content, foreign_key: true

      t.timestamps
    end
  end
end
