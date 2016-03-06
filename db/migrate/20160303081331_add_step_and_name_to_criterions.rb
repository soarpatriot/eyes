class AddStepAndNameToCriterions < ActiveRecord::Migration
  def change
    add_column :criterions, :name, :string
    add_column :criterions, :step, :integer
  end
end
