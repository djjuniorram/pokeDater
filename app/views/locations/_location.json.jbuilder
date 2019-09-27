json.extract! location, :id, :img_url, :bio, :name, :created_at, :updated_at
json.url location_url(location, format: :json)
