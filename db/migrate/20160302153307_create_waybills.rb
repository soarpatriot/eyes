class CreateWaybills < ActiveRecord::Migration
  def change
    create_table :waybills do |t|
      t.string :code
      t.integer :user_id
      t.integer :collection_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
