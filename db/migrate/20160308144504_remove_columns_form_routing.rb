class RemoveColumnsFormRouting < ActiveRecord::Migration
  def change
    remove_column :routings, :start_id
    remove_column :routings, :destination_id
 
  end
end
