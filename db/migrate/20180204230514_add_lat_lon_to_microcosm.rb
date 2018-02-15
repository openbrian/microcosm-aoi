class AddLatLonToMicrocosm < ActiveRecord::Migration[5.1]
  def change
    add_column :microcosms, :lat, :numeric
    change_column :microcosms, :lat, :numeric, :null => false
    add_column :microcosms, :lon, :numeric
    change_column :microcosms, :lon, :numeric, :null => false
  end
end
