require_relative 'bike_container'

class Van 
	include BikeContainer

	def initialize(specs = {})
		@capacity = specs.fetch(:capacity, capacity)
		@broken
	end

	def collect_broken_bikes_from(station)

		station.broken_bikes.each do |broken_bike|
			station.release(broken_bike)
			dock(broken_bike)
		end
	end

	
	def drop_broken_bikes_to(garage)
		garage.broken_bikes.each do |broken_bike|
			garage.release(broken_bike)
			dock(broken_bike)
		end
	
	end

end