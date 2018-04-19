class Member < ApplicationRecord
  belongs_to :microcosm, counter_cache: true
  belongs_to :user
end
