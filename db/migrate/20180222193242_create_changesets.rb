class CreateChangesets < ActiveRecord::Migration[5.1]
  def change
    create_table :changesets do |t|
      t.bigint :user_id
      t.timestamp :created_at, :null => false
      t.integer :min_lat
      t.integer :max_lat
      t.integer :min_lon
      t.integer :max_lon
      t.timestamp :closed_at, :null => false
      t.integer :num_changes, :null => false, :default => 0

#     t.timestamps
    end
  end
end
