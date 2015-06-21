class RemoveWaypoints < ActiveRecord::Migration
  def change
    drop_table :waypoints
  end
end
