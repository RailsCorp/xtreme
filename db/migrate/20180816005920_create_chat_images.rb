class CreateChatImages < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_images do |t|
      t.string :image, null: false
      t.references :chat, foreign_key: true, index: true, null: false
      t.timestamps
    end
  end
end
