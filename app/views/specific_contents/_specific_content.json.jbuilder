json.extract! specific_content, :id, :title, :subtitle, :content, :external_link, :created_at, :updated_at
json.url specific_content_url(specific_content, format: :json)
