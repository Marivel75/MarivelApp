class AddOnlineToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :online, :boolean, default: false
  end
end
