class AddBoundsToMicrocosm < ActiveRecord::Migration[5.1]
  def change
    add_column :microcosms, :min_lat, :integer
    change_column :microcosms, :min_lat, :integer, :null => false

    add_column :microcosms, :max_lat, :integer
    change_column :microcosms, :max_lat, :integer, :null => false

    add_column :microcosms, :min_lon, :integer
    change_column :microcosms, :min_lon, :integer, :null => false

    add_column :microcosms, :max_lon, :integer
    change_column :microcosms, :max_lon, :integer, :null => false
  end
end
