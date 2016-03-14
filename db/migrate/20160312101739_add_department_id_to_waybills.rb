class AddDepartmentIdToWaybills < ActiveRecord::Migration
  def change
    add_column :waybills, :department_id, :integer
  end
end
