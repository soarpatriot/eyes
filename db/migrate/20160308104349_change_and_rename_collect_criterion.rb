class ChangeAndRenameCollectCriterion < ActiveRecord::Migration
  def change
    rename_column :collect_criterions, :assign_mins, :assign_station_mins
    rename_column :collect_criterions, :door_mins,   :assign_man_mins
    rename_column :collect_criterions, :accquire_mins,   :collect_mins
    remove_column :collect_criterions, :in_mins
    remove_column :collect_criterions, :out_mins
    remove_column :collect_criterions, :criteriable_id
    remove_column :collect_criterions, :criteriable_type
 
  end
end
