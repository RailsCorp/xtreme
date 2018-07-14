class DropCoporation < ActiveRecord::Migration[5.1]
  def up
    change_column :coporations, :name, :string, null: false
    change_column :coporations, :owner, :string, null: false
    change_column :coporations, :address, :text, null: false
    add_column :coporations, :established, :datetime, null: false
  end

  def down
    change_column :coporations, :name, :string
    change_column :coporations, :owner, :string
    change_column :coporations, :address, :text
  end
end
