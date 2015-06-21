class AddSoftDeleteToBikers < ActiveRecord::Migration
  def change
    add_column :bikers, :soft_delete_flag, :boolean, null: false, default: false
  end
end
