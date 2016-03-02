class CreateCollects < ActiveRecord::Migration
  def change
    create_table :collects do |t|
      t.string :accepted_code
      t.integer :waybill_id
      t.integer :status
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps null: false
    end
  end
end
