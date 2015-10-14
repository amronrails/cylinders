class Agent < ActiveRecord::Base

	has_many :car_prices
	has_many :cars, :through =>  :car_prices

end
