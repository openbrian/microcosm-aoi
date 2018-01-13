class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.timestamp :moment
      t.string :location
      t.text :description
      t.integer :microcosm_id

      t.timestamps
    end
  end
end
