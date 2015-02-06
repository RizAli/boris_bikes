require 'van'

describe Van do 
  
  let (:van)          { Van.new({capacity: 20}) }
  let(:bike)          {double :bike, {broken?: false}}
  let(:broken_bike)   {double :bike, {broken?: true}}
  let(:fixed_bike)    {double :bike, {fix!: true}}
  



  it 'can have a custom capacity' do
    expect(van.capacity).to eq(20)
  end


  it 'can collect broken bikes from the station' do

    expect(van.broken_bikes.count).to eq(0)
    van.dock(broken_bike)
    expect(van.broken_bikes.count).to eq(1)

  end

  it 'can drop fixed bikes to the station' do 
    #have fixed bikes

    expect(van.fixed_bikes.count).to eq(0)
    van.dock(fixed_bike)
    expect(van.fixed_bikes.count).to eq(1)


  end





end
