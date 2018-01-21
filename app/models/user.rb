# See https://github.com/openstreetmap/openstreetmap-website/blob/master/app/models/user.rb
class User < ApplicationRecord
  has_many :members
  has_many :microcosms, through: :members
  has_many :organizers
  has_many :microcosms, through: :organizers

   def self.create_from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["display_name"]
    end
  end
end
