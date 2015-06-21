class AddLatLngToRides < ActiveRecord::Migration
  def up
    add_column :rides, :lat_lng, :text
  end

  def down
    remove_column :rides, :lat_lng
  end
end
