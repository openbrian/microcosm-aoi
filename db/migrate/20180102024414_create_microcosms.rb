class CreateMicrocosms < ActiveRecord::Migration[5.1]
  def change
    create_table :microcosms do |t|
      t.string :name, :null => false
      t.string :key, :null => false
      t.integer :members_num, :null => false

      t.timestamps
    end
    add_index :microcosms, :key, unique: true
  end
end
