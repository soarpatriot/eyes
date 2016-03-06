class AddUserIdToCollect < ActiveRecord::Migration
  def change
    add_column :collects, :user_id, :integer
  end
end
