class RemoveColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :task
    remove_column :tasks, :image
    remove_column :tasks, :deadline
    remove_column :tasks, :complete
  end
end
