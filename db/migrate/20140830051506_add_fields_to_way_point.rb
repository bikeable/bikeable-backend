class AddFieldsToWayPoint < ActiveRecord::Migration
  def change
    add_column :waypoints, :latitude, :float
    add_column :waypoints, :longitude, :float
    add_column :waypoints, :ride_id, :integer
  end
end
