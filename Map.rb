class Map
	def initialize
		@map = [[Space1.new,Space2.new,Space3.new],[Space4.new,Space5.new,""]].shuffle
	end
	
	def show_map
		@map
	end
	
end