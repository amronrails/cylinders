class AdminUser < ActiveRecord::Base

	has_and_belongs_to_many :brands
	has_secure_password
end
