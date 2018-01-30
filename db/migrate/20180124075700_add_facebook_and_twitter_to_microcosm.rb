class AddFacebookAndTwitterToMicrocosm < ActiveRecord::Migration[5.1]
  def change
    add_column :microcosms, :facebook, :string
    add_column :microcosms, :twitter, :string
  end
end
