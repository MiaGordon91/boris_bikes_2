
require_relative 'bike'

class DockingStation
   attr_reader :capacity

   DEFAULT_CAPACITY = 20
  
  def initialize(cap = DEFAULT_CAPACITY)
    @docked_bikes = [] 
    @capacity = cap
    
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
  attr_reader :docked_bikes

  def full?
    @docked_bikes.count >= @capacity
  end

  def empty?
    @docked_bikes.empty?
  end

end
