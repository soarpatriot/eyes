class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.datetime :collect_start
      t.datetime :collect_end
      t.integer :dtype
      t.integer :departable_id
      t.string :departable_type

      t.timestamps null: false
    end
  end
end
