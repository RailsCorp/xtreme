class RemoveUserAndToComments < ActiveRecord::Migration[5.1]
  def change
    change_column :comments, :text, :text, index: true, null: false
    remove_reference :comments, :user, index: true, foreign_key: true
    remove_reference :comments, :task, index: true, foreign_key: true
    add_reference :comments, :user, index: true, foreign_key: true, null: false
    add_reference :comments, :task, index: true, foreign_key: true, null: false
  end
end
