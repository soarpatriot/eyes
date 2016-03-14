class AddStatusToOvertimes < ActiveRecord::Migration
  def change
    add_column :overtimes, :status, :integer
  end
end
