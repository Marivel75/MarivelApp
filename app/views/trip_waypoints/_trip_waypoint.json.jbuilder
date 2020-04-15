json.extract! trip_waypoint, :id, :place_id, :trip_id, :created_at, :updated_at
json.url trip_waypoint_url(trip_waypoint, format: :json)
