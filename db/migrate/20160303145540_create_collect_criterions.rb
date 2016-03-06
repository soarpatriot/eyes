class CreateCollectCriterions < ActiveRecord::Migration
  def change
    create_table :collect_criterions do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.integer :assign_mins
      t.integer :respoonse_mins
      t.integer :door_mins
      t.integer :in_mins
      t.integer :out_mins
      t.integer :accquire_mins
      t.integer :criteriable_id
      t.string :criteriable_type

      t.timestamps null: false
    end
  end
end
