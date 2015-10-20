class Agent < ActiveRecord::Base

	has_many :car_prices
	has_many :cars, :through =>  :car_prices

	scope :sorted, lambda{order("agents.position ASC")}
	scope :visible, lambda{where(:visible => true)}
	acts_as_list
end
