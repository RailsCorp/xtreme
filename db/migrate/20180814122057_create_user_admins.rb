class CreateUserAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :user_admins do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.references :admin_user, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
