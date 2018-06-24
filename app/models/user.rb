# See https://github.com/openstreetmap/openstreetmap-website/blob/master/app/models/user.rb
class User < ApplicationRecord
# belongs_to :osm_user, foreign_key: "uid", class_name: "Osm::User"
  has_many :members
  has_many :microcosms, through: :members
  has_many :organizers
  has_many :microcosms, through: :organizers
  has_many :microcosm_changsets
  # https://www.toasterlovin.com/greatest-per-group-rails-scoped-has-one/
  has_one :first_edit, -> {
    select("distinct on (user_id) *")
    .order(:user_id, :changeset_id)
  }, class_name: "MicrocosmChangeset"

   def self.create_from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["display_name"]
    end
  end
end
