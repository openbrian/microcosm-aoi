class User < ApplicationRecord
  has_many :members
  has_many :microcosms, through: :members
end
