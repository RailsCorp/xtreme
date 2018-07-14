class CreateCoporationUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :coporation_users do |t|
      t.references :user,  index: true, foreign_key: true, null: false
      t.references :coporation,  index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
