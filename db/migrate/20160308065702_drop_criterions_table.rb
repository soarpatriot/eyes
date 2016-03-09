class DropCriterionsTable < ActiveRecord::Migration
  def change
    drop_table :criterions
  end
end
