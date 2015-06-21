class AddRouteSummaryFieldToRides < ActiveRecord::Migration
  def change
    add_column :rides, :route_summary, :text
  end
end
