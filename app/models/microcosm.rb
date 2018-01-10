class Microcosm < ApplicationRecord
  has_many :members
  has_many :users, through: :members
  has_many :organizers
  has_many :org_users, through: :organizers
end
