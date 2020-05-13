class CreatePlaceTags < ActiveRecord::Migration[5.2]
  def change
    create_table :place_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
