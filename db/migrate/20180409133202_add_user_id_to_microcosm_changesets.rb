class AddUserIdToMicrocosmChangesets < ActiveRecord::Migration[5.1]
  def change
    add_column :microcosm_changesets, :user_id, :bigint, unique: true
    change_column :microcosm_changesets, :user_id, :bigint, unique: true, :null => false
    add_column :microcosm_changesets, :editor_id, :bigint, unique: true
    change_column :microcosm_changesets, :editor_id, :bigint, unique: true, :null => false
  end
end
