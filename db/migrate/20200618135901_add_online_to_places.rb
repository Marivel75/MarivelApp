class AddOnlineToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :online, :boolean, default: false
  end
end
