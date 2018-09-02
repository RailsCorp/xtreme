class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.references :group, foreign_key: true, index: true, null: false
      t.integer :chat_type, null: false, default: 0
      t.timestamps
    end
  end
end
