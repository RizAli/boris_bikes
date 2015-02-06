require 'garage'

describe Garage do 

  let (:garage) {Garage.new({capacity: 20})}

  it 'can have a custom capacity' do 
    expect(garage.capacity).to eq(20)
  end
  
  it 'can fix the broken bikes' do
  end


  # it 'it can receive broken bikes from van' do
  #   broken_bike = double :bike, broken?: true
  #   van = double :van, broken_bikes: [broken_bike]

  #   expect(van).to receive(:release).with(broken_bike)
  #   garage.collect_broken_bikes_from(van)

  #   expect(garage.broken_bikes).to eq [broken_bike]

  # end
  
  # it 'can release fixed bikes to van' do

  #   #garge should have fixed bikes
  #   #bike release should be equal to bikes on the van
    

  # end

  
end

