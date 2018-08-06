class ChangeSomeColumnsToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :group, index: true, null: false
    add_column :tasks, :title, :string, index: true, null: false
    add_column :tasks, :content, :text
    add_column :tasks, :on_deadline, :datetime
    add_column :tasks, :is_finished, :boolean, default: false
  end
end
