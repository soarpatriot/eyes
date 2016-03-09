class CreateOvertimes < ActiveRecord::Migration
  def change
    create_table :overtimes do |t|
      t.integer :overtimeable_id
      t.string :overtimeable_type
      t.integer :step
      t.integer :delay_mins

      t.timestamps null: false
    end
  end
end
