require_relative("lib/Room.rb")
require_relative("lib/Game.rb")
room1 = Room.new("PRESS W", "W")
room2 = Room.new("TORESS S", "S")
room3 = Room.new("E", "E")
room4 = Room.new("There is a light to north", "N")



my_game = Game.new
my_game.add_room(room1)
my_game.add_room(room2)
my_game.add_room(room3)
my_game.add_room(room4)

my_game.play
 
#going to make this game awesme