class Agent < ActiveRecord::Base

	has_many :car_prices
	has_many :cars, :through =>  :car_prices

	scope :sorted, lambda{order("agents.position ASC")}
	acts_as_list
end
