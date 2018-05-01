class AddMissingReferences < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :events, :microcosms
    add_foreign_key :members, :microcosms
    add_foreign_key :members, :users
    add_foreign_key :microcosm_changesets, :editors
    add_foreign_key :microcosm_changesets, :microcosms
    add_foreign_key :organizers, :microcosms
    add_foreign_key :organizers, :users
  end
end
