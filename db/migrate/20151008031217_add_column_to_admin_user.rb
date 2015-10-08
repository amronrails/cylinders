class AddColumnToAdminUser < ActiveRecord::Migration
  def change
  	add_column :admin_users, :adminstrator, :boolean
  end
end
