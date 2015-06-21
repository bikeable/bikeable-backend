class ChangeFloatsToDecimal < ActiveRecord::Migration
  def change
    change_column :rides, :avg_speed, :decimal, :precision => 5, :scale => 2
    change_column :rides, :distance, :decimal, :precision => 5, :scale => 2
  end
end
