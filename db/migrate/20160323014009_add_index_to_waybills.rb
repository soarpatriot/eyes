class AddIndexToWaybills < ActiveRecord::Migration
  def change
    add_index :waybills,  :code, :unique => true
  end
end
