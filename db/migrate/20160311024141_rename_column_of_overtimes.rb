class RenameColumnOfOvertimes < ActiveRecord::Migration
  def change
    rename_column :overtimes, :timeline_id, :collect_id
  end
end
