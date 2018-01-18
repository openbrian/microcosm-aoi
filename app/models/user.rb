# See https://github.com/openstreetmap/openstreetmap-website/blob/master/app/models/user.rb
class User < ApplicationRecord
  has_many :members
  has_many :microcosms, through: :members
  has_many :organizers
  has_many :microcosms, through: :organizers
end
