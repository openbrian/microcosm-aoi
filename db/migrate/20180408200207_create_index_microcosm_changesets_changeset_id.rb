class CreateIndexMicrocosmChangesetsChangesetId < ActiveRecord::Migration[5.1]
  def change
    add_index :microcosm_changesets, :changeset_id
  end
end
