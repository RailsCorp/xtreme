class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :task, null: false
      t.text :image
      t.datetime :deadline
      t.timestamps
    end
  end
end
