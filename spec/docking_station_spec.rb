
require "docking_station"

describe DockingStation do

#subject refers to instance of DockingStation class
  it 'DockingStation releases bike' do
    bike = Bike.new
    subject.docked_bike(bike)
    expect(subject.release_bike).to eq(bike)
  end 

 #nested describe because we're describing behavious to this particular method.
  it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available.'
    end 

  it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times { subject.docked_bike Bike.new} #argument has been added as per docked_bike method.
      expect { subject.docked_bike Bike.new }.to raise_error 'Capacity Full'
    end 


  it 'Release a working bike' do
    bike = Bike.new 
    expect(bike.working?).to eq(true)
    # bike = subject.release_bike
    # subject.docked_bike(bike)
  end

  it 'Ability to return a bike to the docking station' do
    bike = Bike.new
    subject.docked_bike(bike)
    expect(subject.docked_bike(bike)).to eq(true)
    #subject.bike refers to the instance of the Bike class created on line 32
  end

  it 'Return a default value if the user doesnt enter an argument' do
    my_docking_station = DockingStation.new
    expect(my_docking_station.capacity). to eq DockingStation::DEFAULT_CAPACITY
  end 

end
