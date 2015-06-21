class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|

      t.timestamps
    end
  end
end
