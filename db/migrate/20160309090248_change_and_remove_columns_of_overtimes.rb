class ChangeAndRemoveColumnsOfOvertimes < ActiveRecord::Migration
  def change
    remove_column :overtimes, :overtimeable_id
    remove_column :overtimes, :overtimeable_type
    add_column :overtimes, :timeline_id, :integer
 
  end
end
