class AddAuthorToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :places, :author, foreign_key: { to_table: :users }
  end
end
