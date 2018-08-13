class RemoveTaskTypeToTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :task_type, :integer, default: 0, null: false
  end
end
