class ChangeAndRemoveColumnsOfTimelines < ActiveRecord::Migration
  def change
    remove_column :timelines, :timelineable_id
    remove_column :timelines, :timelineable_type
    add_column :timelines, :collect_id ,:integer
 
  end
end
