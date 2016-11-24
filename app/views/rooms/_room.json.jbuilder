json.extract! room, :id, :building, :unit, :bedrooms, :bathrooms, :address, :city, :state, :zip, :created_at, :updated_at
json.url room_url(room, format: :json)