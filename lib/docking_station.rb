
require_relative 'bike'

class DockingStation
   attr_reader :docked_bikes
   DEFAULT_CAPACITY = 20
  
  def initialize
    @docked_bikes = [] 
  end 

  def docked_bike(bike)
    #guard condition
    fail 'Capacity Full' if full?
    @docked_bikes.push(bike)
    return true 
  end

  def release_bike
    #guard condition
    fail 'No bikes available.' if empty?
    @docked_bikes.pop
  end

  private

  def full?
    @docked_bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @docked_bikes.empty?
  end

end
