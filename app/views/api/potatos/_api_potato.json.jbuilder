json.extract! api_potato, :id, :name, :variety, :image, :created_at, :updated_at
json.url api_potato_url(api_potato, format: :json)
