class AddUserIdToTimelines < ActiveRecord::Migration
  def change
    add_column :timelines, :user_id, :integer
  end
end
