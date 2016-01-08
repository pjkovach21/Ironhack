#strings
unescaped_strings = 'this is sharons unescaped string'
escaped_string = 'this is sharons\ escaped string'
moive = "llife of pie"
puts "fav film is #{moive}"

#methods for strings

# cap
name = "james Bond"
cap_name = name.capitalize
puts "hello #{cap_name}"

#split at point
flav = " Chocolate, mint, berry, vanilla"
flav_array = flav.split(",")

#length
"how many characters are in this string".length

#include
"awesome".include? "you"
"awesome".include? "me"

phrase = "Just kidding, you're awesome too"
phrase.include? "aw"

#integers
#fixnum for small numbers
#bignum for big numbers
#integers are whole numbers
#floats are for numbers with decimals
age = 28
cats =6
stars_in_galaxy = 325_221_111_213

#methods for integers
age.odd?
age.even?

age.round(1) #returns 28.0
age.round(-1) #returns 30

3.times {puts age}



#Arrays

animals = ["lionas", "tigers" "bears"]
puts animals

numbers = ["one", 2, "Three"]
puts numbers[2]
puts numbers [1]

#methods for Arrays
# << and push add to an Array
# .delate_at 2 deletes that array postion

my_array = []
my_array << "A"
my_array.push "B"
my_array.push "c"

puts my_array

my_array.delete_at 1

puts my_array


#sort lowest to hightest
array1 = [2,3,1,4,5,8,2]
puts array1
array1.sort
puts array1

#joining arrays
# .join


#hashes
my_hash = {}

my_hash ["DTW"] = "Detroit"
my_hash ["ATL"] = "Atlanta"

puts my_hash ["DTW"]

puts my_hash

## Methods for Hashes

#To check if your hash contains a certain key, you can use the method #has_key?. To check for a specific value, the method is #has_value?

my_hash = {}
my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"

my_hash.has_key?("AST") 

my_hash.has_key?("CAT")

my_hash.has_value?("Galicia")


 my_hash.select { |key, value| key.include?("G") }

