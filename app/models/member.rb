class Member < ApplicationRecord
  belongs_to :microcosm
  belongs_to :user
end
