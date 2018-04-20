class AddDescriptionToMicrocosms < ActiveRecord::Migration[5.1]
  def change
    add_column :microcosms, :description, :text
  end
end
