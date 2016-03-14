class AddOtypeToOvertimes < ActiveRecord::Migration
  def change
    add_column :overtimes, :otype, :integer
  end
end
