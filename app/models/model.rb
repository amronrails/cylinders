class Model < ActiveRecord::Base
#relations
belongs_to :brand
has_many :cars

#inbetween
 has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 scope :visible, lambda { where(:visible => true) }
 scope :sorted, lambda{ order("models.position ASC") }
 scope :search, lambda { |q| where(["Name Like ?", "%#{q}%"]) }

#vakidations
 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
