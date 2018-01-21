OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :osm, ENV['OSM_KEY'], ENV['OSM_SECRET']
# :fetch_permissions => true
end

