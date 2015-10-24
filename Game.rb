class Game
	attr_accessor :players, :level
	def initialize
		@players
		@level
	end

	def choose_number_of_players
		puts "Please choose the number for players:"
		(1..4).reduce (1) do |sum,x|
			puts "Press #{x} for #{x} players"
			sum+=1
		end
		number=gets.chomp.to_i
		return number
	end

	def create_players(number_of_players)
		@players=Array.new(number_of_players)
		@players.each_with_index do |player,index|
			puts "Please introduce the name of Player #{index+1}"
			name=gets.chomp.to_s
			@players[index]=Player.new(name)
		end
	end

	def begin_game
		@players.each_with_index do |player,index|
			map=player.show_map
			map.each_with_index do |space,index|
				space.each_with_index do |little_space,index2|
					case little_space
					when Space1
					# if little_space.show_name=="Space1"
						x=index
						y=index2
						player.beginning_position(x,y)
					end
				end
			end
		end
	end

	def beginning_room


	end
	
end