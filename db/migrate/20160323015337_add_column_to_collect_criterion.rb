class AddColumnToCollectCriterion < ActiveRecord::Migration
  def change
    add_column :collect_criterions, :type, :integer
    add_column :collect_criterions, :is_delete, :integer
  end
end
