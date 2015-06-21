class AddFieldsToRider < ActiveRecord::Migration
  def change
    add_column :rides, :name, :string
    add_column :rides, :distance, :float
    add_column :rides, :elevation, :float
    add_column :rides, :avg_speed, :float
    add_column :rides, :datetime, :datetime
    add_column :rides, :biker_id, :integer
    add_column :rides, :strava_id, :string
  end
end
