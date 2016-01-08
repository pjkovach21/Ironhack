2 ==3
2 < 3
2<= 3
3>= 3
"two" == 2

1 == 1 && 1 > 2
1 == 1 && 3 > 2
1 == 1 || 1 > 2
1 == 1 || 3 > 2
1 == "one" || 1 > 2


1 != 2
true == !false


puts "what is fav animal"
animal = gets.chomp
if animal == "Dog"
	print "woof!"
elsif animal == "cat"
	print "meow"
else 
	print "what id your problem"
end

num = [1,2,3]
for x in num
	puts "-> #{x}"
end

string = ""

while string.length < 10
	string = string + 'a' 
end

puts "The final string is #{string}"

numbaz = [ "One" , "2", "three"]
numbaz.each do |x|
	puts "-> #{x}"
end

my_hash = {}
my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"
my_hash["CAT"] = "Catalunya"

my_hash.each do |key, value|
	puts "#{key} stands for #{value}"
end