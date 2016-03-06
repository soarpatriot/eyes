class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.string :origin
      t.string :api_key
      t.integer :ktype
      t.string :api_secret

      t.timestamps null: false
    end
  end
end
