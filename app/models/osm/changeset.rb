class Osm::Changeset < ApplicationRecord
  belongs_to :user, class_name: 'Osm::User'
  establish_connection(:osm)
end
