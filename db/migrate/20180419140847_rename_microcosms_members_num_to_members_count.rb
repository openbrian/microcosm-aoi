class RenameMicrocosmsMembersNumToMembersCount < ActiveRecord::Migration[5.1]
  def change
    rename_column :microcosms, :members_num, :members_count
  end
end
