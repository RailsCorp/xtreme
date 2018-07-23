class ChangesColumnToTasks < ActiveRecord::Migration[5.1]
  def up
    change_column :tasks, :task_type, :integer, null: false, default: 0
  end
  def down
    change_column :tasks, :task_type, :integer, null: false
  end
end
