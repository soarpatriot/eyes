class RemoveColumnsFromDepartment < ActiveRecord::Migration
  def change
    remove_column :departments, :collect_start
    remove_column :departments, :collect_end
 
  end
end
