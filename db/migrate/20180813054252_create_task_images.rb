class CreateTaskImages < ActiveRecord::Migration[5.2]
  def change
    create_table :task_images do |t|
      t.string :image, null: false
      t.references :task, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
