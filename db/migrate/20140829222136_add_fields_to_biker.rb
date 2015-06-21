class AddFieldsToBiker < ActiveRecord::Migration
  def change
    add_column :bikers, :name, :string
    add_column :bikers, :strava_id, :string
  end
end
