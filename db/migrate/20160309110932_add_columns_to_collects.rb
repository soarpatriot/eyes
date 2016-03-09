class AddColumnsToCollects < ActiveRecord::Migration
  def change
    add_column :collects, :department_id, :integer
  end
end
