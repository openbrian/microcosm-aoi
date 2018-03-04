class Microcosm < ApplicationRecord
  has_many :members
  has_many :users, through: :members
  has_many :organizers
  has_many :org_users, through: :organizers
  has_many :events

  def changesets()
    Changeset.all
  end
end
