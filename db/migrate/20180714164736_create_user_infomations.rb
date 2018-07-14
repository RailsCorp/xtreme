class CreateUserInfomations < ActiveRecord::Migration[5.1]
  def change
    create_table :user_infomations do |t|
      t.string :role
      t.string :department
      t.text :image
      t.references :user,  index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
