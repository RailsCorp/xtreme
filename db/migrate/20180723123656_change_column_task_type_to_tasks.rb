class ChangeColumnTaskTypeToTasks < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :task_type, :integer, null: false
  end
end
