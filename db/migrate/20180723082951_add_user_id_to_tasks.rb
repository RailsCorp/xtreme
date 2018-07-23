class AddUserIdToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :complete, :boolean
    add_column :tasks, :task_type, :integer
  end
end
