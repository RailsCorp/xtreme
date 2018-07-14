class CreateCoporationTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :coporation_tasks do |t|
      t.references :task,  index: true, foreign_key: true, null: false
      t.references :coporation,  index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
