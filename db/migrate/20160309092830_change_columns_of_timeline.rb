class ChangeColumnsOfTimeline < ActiveRecord::Migration
  def change
    rename_column :timelines, :status, :step
  end
end
