class AddRankToTripWaypoints < ActiveRecord::Migration[5.2]
  def change
    add_column :trip_waypoints, :rank, :integer
  end
end
