class ChangeStartAtAndEndAtInCollectCriterion < ActiveRecord::Migration
  def change
    change_column :collect_criterions, :start_at, :time
    change_column :collect_criterions, :end_at, :time
  end

end
