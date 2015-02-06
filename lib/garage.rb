require_relative 'bike_container'

class Garage
  include BikeContainer

  def initialize(spec = {})
    @capacity = spec.fetch(:capacity, capacity)
  end

  

end