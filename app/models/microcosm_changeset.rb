class MicrocosmChangeset < ApplicationRecord
  belongs_to :microcosm
  belongs_to :changeset, class_name: 'Osm::Changeset'
end
