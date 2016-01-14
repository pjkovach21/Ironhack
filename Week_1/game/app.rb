require_relative("lib/Room.rb")
require_relative("lib/Game.rb")
room1 = Room.new("There is a light to north", "W")
room2 = Room.new("There is a light to north", "S")
room3 = Room.new("There is a light to north", "E")
room4 = Room.new("There is a light to north", "N")

room1.display_discription

my_game = Game.new
my_game.add_room(room1)
my_game.add_room(room2)
my_game.add_room(room3)
my_game.add_room(room4)


my_game.play
