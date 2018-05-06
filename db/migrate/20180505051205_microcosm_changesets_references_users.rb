class MicrocosmChangesetsReferencesUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :microcosm_changesets, :editor_id
    add_foreign_key :microcosm_changesets, :users
  end
end
