class SetMicocosmsMembersCountDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default :microcosms, :members_count, from: nil, to: 0
  end
end
