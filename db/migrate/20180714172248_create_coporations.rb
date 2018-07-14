class CreateCoporations < ActiveRecord::Migration[5.1]
  def change
    create_table :coporations do |t|
      t.string :name
      t.text :image
      t.text :introduce
      t.string :owner
      t.text :address

      t.timestamps
    end
  end
end
