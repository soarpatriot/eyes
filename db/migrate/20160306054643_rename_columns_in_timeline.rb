class RenameColumnsInTimeline < ActiveRecord::Migration
  def change
    rename_column :timelines, :lineable_id, :timelineable_id
    rename_column :timelines, :lineable_type, :timelineable_type
  end
end
