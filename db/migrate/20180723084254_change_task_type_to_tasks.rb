class ChangeTaskTypeToTasks < ActiveRecord::Migration[5.1]
  def change
    add_index :tasks, :task_type
  end
end
