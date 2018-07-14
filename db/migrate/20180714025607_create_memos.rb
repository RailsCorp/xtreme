class CreateMemos < ActiveRecord::Migration[5.1]
  def change
    create_table :memos do |t|
      t.text :memo, null: false
      t.references :task, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
