class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|

    	t.string :username, null: false
    	t.string :password_digest, null: false
    	t.string :email


      t.timestamps null: false
    end
    add_index("admin_users", "username")
  end
end
