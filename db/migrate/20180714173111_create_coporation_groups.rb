class CreateCoporationGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :coporation_groups do |t|
      t.references :group,  index: true, foreign_key: true, null: false
      t.references :coporation,  index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
