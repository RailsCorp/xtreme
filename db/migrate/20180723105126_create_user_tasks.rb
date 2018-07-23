class CreateUserTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tasks do |t|
      t.text :content, null: false
      t.text :image
      t.datetime :deadline
      t.boolean :complete, default: false, null: false
      t.references :user,  index: true, foreign_key: true, null: false
      t.references :task,  index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
