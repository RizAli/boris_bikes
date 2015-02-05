require_relative 'bike_container'

class Garage
  include BikeContainer

  def initialize(spec = {})
    @capacity = spec.fetch(:capacity, capacity)
  end


  def collect_broken_bikes_from(van)
    van.broken_bikes.each do |broken_bike|
      van.release(broken_bike)
      dock(broken_bike)
    end

  end

end