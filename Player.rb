class Player
	def initialize(name)
		@name=name
		@bag={}
		@spaces_map=Map.new
		@position
	end

	def show_map
		@spaces_map.show_map
	end

	def beginning_position(x,y)
		@position=[x,y]
	end
end