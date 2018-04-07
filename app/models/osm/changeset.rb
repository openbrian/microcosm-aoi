class Osm::Changeset < ApplicationRecord
  establish_connection(:osm)
end
