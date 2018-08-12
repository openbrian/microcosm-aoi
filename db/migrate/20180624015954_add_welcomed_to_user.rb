class AddWelcomedToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :welcomed, :boolean, null: false, default: false
    add_column :microcosms, :welcome_message, :string, null: false, default: 'Welcome to OSM and thanks for your improvements to the map.'
  end
end
