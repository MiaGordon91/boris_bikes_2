
require_relative 'bike'

class DockingStation
   attr_reader :docked_bikes
  
  def initialize
    @docked_bikes = []
    @capacity = 20 
  end 

  def docked_bike(bike)
    #guard condition
    fail 'Capacity Full' if @docked_bikes.length >= @capacity
    @docked_bikes.push(bike)
    return true 
  end

  def release_bike
    #guard condition
    fail 'No bikes available.' unless @docked_bikes.length >= 1
    @docked_bikes.pop
  end

  #def bike
    #return @bike
  #end
end
