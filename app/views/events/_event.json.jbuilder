json.extract! event, :id, :title, :moment, :location, :description, :microcosm_id, :created_at, :updated_at
json.url event_url(event, format: :json)
