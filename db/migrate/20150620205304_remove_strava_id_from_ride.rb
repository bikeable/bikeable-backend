class RemoveStravaIdFromRide < ActiveRecord::Migration
  def up
    remove_column :rides, :strava_id
  end
end
