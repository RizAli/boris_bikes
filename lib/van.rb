require_relative 'bike_container'

class Van 
	include BikeContainer

	def initialize(specs = {})
		@capacity = specs.fetch(:capacity, capacity)
		@broken
	end




end