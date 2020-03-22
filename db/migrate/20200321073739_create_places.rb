class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.text :address
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :subtitle
      t.float :price
      t.string :website
      t.string :phone
      t.float :price_2

      t.timestamps
    end
  end
end
