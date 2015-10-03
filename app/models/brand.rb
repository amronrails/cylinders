class Brand < ActiveRecord::Base
	 
	has_many :models

	has_attached_file :icon, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  

  	validates_attachment_content_type :icon, content_type: /\Aimage\/.*\Z/
end
