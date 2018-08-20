class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.references :group, foreign_key: true, index: true, null: false
      t.text :chat, null: false
      t.timestamps
    end
  end
end
