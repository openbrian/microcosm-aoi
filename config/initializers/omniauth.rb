Rails.application.config.middleware.use OmniAuth::Builder do
  provider :osm, '247bjP5rQgBAKdGfXdBAnWQf8DsPEW2IZGG0drMC', '5qcprnT7QdieHl7oEMvkaYmre6b1q0qvveLCMaCW'
# :fetch_permissions => true
end

