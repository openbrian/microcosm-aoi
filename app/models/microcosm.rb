class Microcosm < ApplicationRecord
  has_many :members
  has_many :users, through: :members
  has_many :organizers
  has_many :org_users, through: :organizers
  has_many :events
  has_many :editors
  has_many :microcosm_changesets
  has_many :changesets, through: :microcosm_changesets
end
