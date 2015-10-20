class CarPrice < ActiveRecord::Base
	belongs_to :car
	belongs_to :agent

 validates_presence_of :car_id
 validates_presence_of :agent_id

end
