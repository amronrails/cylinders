class CarPrice < ActiveRecord::Base
	belongs_to :car
	belongs_to :agent
end
