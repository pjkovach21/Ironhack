require_relative("lib/car.rb")
require_relative("lib/flying_car.rb")
require_relative("lib/invisible.rb")

#variable methods and names should be lowered
my_car = Car.new("grey","Honda","zoom")


car1 = Car.new("red","Cooper","cho cho")

car2 = Car.new("blue", "Mazda","vrum")


fly_car = Flyingcar.new("blue","ford","psh")

invisible = InvisibleCar.new("invisible","ford","shh")

#car is acting weitd
puts "car2 goes #{car2.rev}"
puts "car1 goes #{car1.rev}"
puts "bird car goes #{fly_car.fly}"
puts " hey what is that #{invisible.rev}"
