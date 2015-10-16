class Car < ActiveRecord::Base

	#relations
	belongs_to :models
	has_many :car_prices
	has_many :agents, :through => :car_prices

	#inbetween
	acts_as_list :scope => :model
	scope :visible, lambda { where(:visible => true) }
  	scope :sorted, lambda{ order("cars.position ASC") }
  	scope :search, lambda { |q| where(["Name Like ?", "%#{q}%"]) }
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	
	#validations
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  	validates_presence_of :permalink
  	validates_uniqueness_of :permalink
end
