class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.integer :microcosm_id, index: true, null: false
      t.integer :user_id, index: true, null: false

      t.timestamps
    end
  end
end
