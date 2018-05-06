class MicrocosmChangeset < ApplicationRecord
  belongs_to :microcosm
  belongs_to :changeset, class_name: 'Osm::Changeset'
  belongs_to :user, foreign_key: :user_id, primary_key: :uid
# TODO: scope :unreviewed, { where(review_num: 0) }
end
