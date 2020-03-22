class CreateTravelers < ActiveRecord::Migration[5.2]
  def change
    create_table :travelers do |t|

      t.timestamps
    end
  end
end
