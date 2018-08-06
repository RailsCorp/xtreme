class DropSomeTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :coporation_groups
    drop_table :coporation_tasks
    drop_table :coporation_users
    drop_table :coporations
    drop_table :group_tasks
    drop_table :user_tasks
  end
end
