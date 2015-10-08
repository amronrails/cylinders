class CreateAdminUsersBrandsJoin < ActiveRecord::Migration
  def change
    create_table :admin_users_brands do |t|
    	t.integer :admin_user_id
    	t.integer :brand_id
    end
    add_index :admin_users_brands, ["admin_user_id", "brand_id"]
  end
end
