class CreateBikers < ActiveRecord::Migration
  def change
    create_table :bikers do |t|

      t.timestamps
    end
  end
end
