class Osm::User < ApplicationRecord
  establish_connection(:osm)
end
