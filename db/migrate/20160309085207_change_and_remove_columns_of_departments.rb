class ChangeAndRemoveColumnsOfDepartments < ActiveRecord::Migration
  def change
    remove_column :departments, :departable_type
    remove_column :departments, :departable_id
    add_column :departments, :city_id ,:integer
  end
end
