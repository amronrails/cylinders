class Brand < ActiveRecord::Base
	
	#relations 
	has_many :models
	has_and_belongs_to_many :admin_users

	#in between
	acts_as_list
	has_attached_file :icon, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	scope :visible, lambda { where(:visible => true) }
  	scope :sorted, lambda{ order("brands.position ASC") }
  	scope :search, lambda { |q| where(["Name Like ?", "%#{q}%"]) }
	#validations
  	validates_attachment_content_type :icon, content_type: /\Aimage\/.*\Z/
  	validates_presence_of :permalink
  	validates_uniqueness_of :permalink
end
