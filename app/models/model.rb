class Model < ActiveRecord::Base
#relations
belongs_to :brand
has_many :cars

#inbetween
 acts_as_list :scope => :brand
 has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 scope :visible, lambda { where(:visible => true) }
 scope :sorted, lambda{ order("models.position ASC") }
 scope :search, lambda { |q| where(["Name Like ?", "%#{q}%"]) }

#vakidations
 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
 validates_presence_of :permalink
 validates_uniqueness_of :permalink
 validates_presence_of :car_id

end
