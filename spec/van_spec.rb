require 'van'

describe Van do 
  
  let (:van)          { Van.new({capacity: 20}) }
  
  it 'can have a custom capacity' do
    expect(van.capacity).to eq(20)
  end


  it 'can collect broken bikes from a station' do
    broken_bike = double :bike, broken?: true
    old_street = double :station, broken_bikes: [broken_bike]

    expect(old_street).to receive(:release).with(broken_bike)
    van.collect_broken_bikes_from(old_street)

    expect(van.broken_bikes).to eq [broken_bike]

  end

  it 'can drop the broken_bikes to garage' do 
    broken_bike = double :bike, broken?: true
    garage = double :garage, broken_bikes: [broken_bike]

    expect(garage).to receive(:release).with(broken_bike)
    van.drop_broken_bikes_to(garage)

    expect(van.broken_bikes).to eq [broken_bike]

  end








  # it 'can collect broken bikes from a station' do
  #   broken_bike = double :bike, broken?: true
  #   old_street  = double :station, broken_bikes: [broken_bike]


  #   expect(old_street).to receive(:release).with(broken_bike)
  #   van.collect_broken_bikes_from(old_street)

  #   expect(van.broken_bikes).to eq [broken_bike]
  # end

  # it 'can drop the broken bikes to the garage' do 
  #   broken_bike = double :bike, broken?: true
  #   garage = double :garage, broken_bikes: [broken_bike]
    
  #   expect(garage).to receive(:release).with(broken_bike)
  #   van.drop_broken_bikes_to(garage)

  #   expect(van.broken_bike).to eq [broken_bike]
  # end
end

