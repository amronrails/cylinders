class AddSpecsToCar < ActiveRecord::Migration
  def change
	add_column :cars, :motorCapacity, :string
	add_column :cars, :gearBox, :string
	add_column :cars, :numberOfShifts, :string
	add_column :cars, :carShape, :string
	add_column :cars, :cylinders, :string
	add_column :cars, :sababat, :string
	add_column :cars, :fuelType, :string
	add_column :cars, :fuelInjectionType, :string
	add_column :cars, :torque, :string
	add_column :cars, :horsePower, :string
	add_column :cars, :acceleration, :string
	add_column :cars, :traction, :string
	add_column :cars, :doorsNumber, :string
	add_column :cars, :seatsNumber, :string
	add_column :cars, :averageFuelConsumption, :string
	add_column :cars, :tankCapacity, :string
	add_column :cars, :carHeight, :string
	add_column :cars, :highestSpeed, :string
	add_column :cars, :airbagsnumber, :string
	add_column :cars, :electronicChairs, :string
	add_column :cars, :ABS, :string
	add_column :cars, :EBD, :string
	add_column :cars, :ESP, :string
	add_column :cars, :stealInzar, :string
	add_column :cars, :stealImbolizerSystem, :string
	add_column :cars, :sportWheels, :string
	add_column :cars, :wheelSize, :string
	add_column :cars, :fogLights, :string
	add_column :cars, :electronicClosingMirrors, :string
	add_column :cars, :zinonLights, :string
	add_column :cars, :lightsSensor, :string
	add_column :cars, :LEDLights, :string
	add_column :cars, :spoiler, :string
	add_column :cars, :electronicTara, :string
	add_column :cars, :parkingAssist, :string
	add_column :cars, :parkinSensor, :string
	add_column :cars, :backCamera, :string
	add_column :cars, :engineStart, :string
	add_column :cars, :smartKey, :string
	add_column :cars, :AUX, :string
	add_column :cars, :bluetooth, :string
	add_column :cars, :ChargingSystem, :string
	add_column :cars, :CD, :string
	add_column :cars, :USB, :string
	add_column :cars, :electronicCarGlass, :string
	add_column :cars, :multiTara, :string
	add_column :cars, :multiKey , :string
	add_column :cars, :controlDriverSeatHeight, :string
	add_column :cars, :leatherTara, :string
	add_column :cars, :leatherFarsh, :string
	add_column :cars, :constantSpeedControl, :string
	add_column :cars, :leatherGearbox, :string
	add_column :cars, :storagePlacesFront, :string
	add_column :cars, :storagePlacesBack, :string
	add_column :cars, :storagePlacesColonswa, :string
	add_column :cars, :packingBackChairs, :string
	add_column :cars, :cigaretteLighter, :string
	add_column :cars, :centerLock, :string
	add_column :cars, :backSeatsAC, :string
	add_column :cars, :mas7atSensors, :string
	add_column :cars, :trunkCapacity, :string
	add_column :cars, :ta2felType, :string
	add_column :cars, :turboEngine, :string
	add_column :cars, :engineType, :string
	add_column :cars, :gearBoxType, :string


	add_column :cars, :price, :string
	add_column :cars, :price2, :string
	add_column :cars, :additional, :string
	add_column :cars, :additional2, :string
	add_column :cars, :additional3, :string
	add_column :cars, :additional4, :string
	add_column :cars, :additional5, :string
	add_column :cars, :additional6, :string
	add_column :cars, :additional7, :string
	add_column :cars, :additional8, :string

  end
end