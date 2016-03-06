class RenameRespoonseMinsInCollectCriterion < ActiveRecord::Migration
  def change
    rename_column :collect_criterions, :respoonse_mins, :response_mins
  end
end
