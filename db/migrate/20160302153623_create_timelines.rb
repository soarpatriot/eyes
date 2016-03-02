class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.datetime :opt_at
      t.integer :lineable_id
      t.string :lineable_type
      t.text :remark
      t.integer :status

      t.timestamps null: false
    end
  end
end
