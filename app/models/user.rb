class User < ApplicationRecord
  has_many :members
  has_many :microcosms, through: :members
  has_many :organizers
  has_many :microcosms, through: :organizers
end
