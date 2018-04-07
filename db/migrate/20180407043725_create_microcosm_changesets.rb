class CreateMicrocosmChangesets < ActiveRecord::Migration[5.1]
  def change
    create_table :microcosm_changesets do |t|
      t.integer :microcosm_id
      t.bigint :changeset_id
      t.integer :review_num

      t.timestamps
    end
  end
end
