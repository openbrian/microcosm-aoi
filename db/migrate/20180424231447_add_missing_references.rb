class AddMissingReferences < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :events, :microcosm
    add_foreign_key :members, :microcosm
    add_foreign_key :members, :user
    add_foreign_key :microcosm_changesets, :editor
    add_foreign_key :microcosm_changesets, :microcosm
    add_foreign_key :organizers, :microcosm
    add_foreign_key :organizers, :user
  end
end
