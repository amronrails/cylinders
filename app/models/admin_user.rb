class AdminUser < ActiveRecord::Base

	has_and_belongs_to_many :brands
	has_secure_password

	scope :sorted, lambda {order("admin_users.id ASC")}
end
