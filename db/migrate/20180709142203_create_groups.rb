class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :introduce
      t.text :image

      t.timestamps
    end
  end
end
