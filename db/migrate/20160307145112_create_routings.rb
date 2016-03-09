class CreateRoutings < ActiveRecord::Migration
  def change
    create_table :routings do |t|
      t.integer :shift
      t.time :start_at
      t.integer :collect_mins
      t.integer :in_mins
      t.integer :out_mins
      t.integer :arrival_mins
      t.integer :start_id
      t.integer :destination_id

      t.timestamps null: false
    end
  end
end
