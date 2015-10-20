class CarPrice < ActiveRecord::Base
	belongs_to :car
	belongs_to :agent


	validates :car_id, uniqueness: {scope: :agent_id,  message: "~  Fwaa2!! you entered this before"}
	validates_presence_of :car_id
	validates_presence_of :agent_id

private


end
