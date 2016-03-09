class ChangeColumnCollect < ActiveRecord::Migration
  def change

    rename_column :collects, :status, :step
  end
end
