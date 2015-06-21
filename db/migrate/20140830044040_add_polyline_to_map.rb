class AddPolylineToMap < ActiveRecord::Migration
  def change
    add_column :rides, :polyline, :text
    add_column :rides, :lat_start, :float
    add_column :rides, :lng_start, :float
    add_column :rides, :lat_end, :float
    add_column :rides, :lng_end, :float
  end
end
