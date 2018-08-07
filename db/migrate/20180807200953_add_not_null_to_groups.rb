class AddNotNullToGroups < ActiveRecord::Migration[5.2]
  def change
    change_column :groups, :name, :string, index: true, null: false
    change_column :tasks, :title, :string, index: true, null: false
    remove_column :users, :name, :string
    add_column :user_infomations, :name, :string, null: false
    remove_column :members, :name, :string, null: false
    add_column :members, :role, :integer, default: 0, null: false
  end
end
