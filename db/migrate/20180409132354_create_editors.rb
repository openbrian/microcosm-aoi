class CreateEditors < ActiveRecord::Migration[5.1]
  def change
    create_table :editors do |t|
      t.bigint :user_id, null: false
      t.string :display_name, null: false

      t.timestamps
    end
    add_index :editors, :user_id
  end
end
