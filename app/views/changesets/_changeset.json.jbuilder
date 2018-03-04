json.extract! changeset, :id, :user_id, :created_at, :min_lat, :max_lat, :min_lon, :max_lon, :closed_at, :num_changes, :created_at, :updated_at
json.url changeset_url(changeset, format: :json)
