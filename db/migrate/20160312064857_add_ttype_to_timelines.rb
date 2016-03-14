class AddTtypeToTimelines < ActiveRecord::Migration
  def change
    add_column :timelines, :ttype, :integer
  end
end
