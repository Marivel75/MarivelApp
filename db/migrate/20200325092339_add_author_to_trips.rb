class AddAuthorToTrips < ActiveRecord::Migration[5.2]
  def change
    add_reference :trips, :author, foreign_key: { to_table: :users }
  end
end
