class AddTypeToRides < ActiveRecord::Migration
  def change
    add_column :rides, :type, :string
  end
end
