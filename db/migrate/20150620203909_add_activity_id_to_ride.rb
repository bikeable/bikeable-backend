class AddActivityIdToRide < ActiveRecord::Migration
  def change
    add_column :rides, :activity_id, :integer
  end
end
