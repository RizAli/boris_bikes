require_relative 'bike_container'

class DockingStation
	
	include BikeContainer

	def initialize(specs = {})
		self.capacity = specs.fetch(:capacity, capacity)
	end

end