class CreateCriterions < ActiveRecord::Migration
  def change
    create_table :criterions do |t|
      t.integer :ctype
      t.integer :minutes
      t.integer :criterionable_id
      t.string :criterionable_type

      t.timestamps null: false
    end
  end
end
