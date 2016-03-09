class AddColumnsToCollectCriterion < ActiveRecord::Migration
  def change
    add_column :collect_criterions, :department_id, :integer
    add_column :collect_criterions, :city_id, :integer
    add_column :collect_criterions, :province_id, :integer
  end
end
