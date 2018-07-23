class ChangeCompleteToTasks < ActiveRecord::Migration[5.1]
  def up
    change_column :tasks, :complete, :boolean, default: false, null: false
  end

  def down
    change_column :tasks, :complete, :boolean
  end
end
