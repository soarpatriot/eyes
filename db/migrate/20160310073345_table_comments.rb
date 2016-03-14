class TableComments < ActiveRecord::Migration
  def change
     set_table_comment :users, "用户"
     set_column_comment :users, :name, "用户名称"
  end
end
