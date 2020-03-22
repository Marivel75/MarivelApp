json.extract! trip, :id, :title, :description, :category_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
