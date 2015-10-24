require 'pry'
require_relative "Game.rb"
require_relative "Player.rb"
require_relative "Map.rb"
require_relative "Awards.rb"
require_relative "Space1.rb"
require_relative "Space2.rb"
require_relative "Space3.rb"
require_relative "Space4.rb"
require_relative "Space5.rb"

game = Game.new

players_number=game.choose_number_of_players
game.create_players(players_number)
puts "Let's the game begin!!!"
game.begin_game
binding.pry
