class CreateChatTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_texts do |t|
      t.string :text, null: false
      t.references :chat, foreign_key: true, index: true, null: false
      t.timestamps
    end
  end
end
