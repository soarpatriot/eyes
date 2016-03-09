class AddColumnsToRouting < ActiveRecord::Migration
  def change
    add_column :routings, :start_province_id, :integer
    add_column :routings, :start_city_id, :integer
    add_column :routings, :start_department_id, :integer
    add_column :routings, :destination_province_id, :integer
    add_column :routings, :destination_city_id, :integer
    add_column :routings, :destination_department_id, :integer
  end
end
