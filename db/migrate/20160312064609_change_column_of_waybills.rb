class ChangeColumnOfWaybills < ActiveRecord::Migration
  def change
    rename_column :waybills, :collection_id, :collect_id
    rename_column :waybills, :status, :step
  end
end
