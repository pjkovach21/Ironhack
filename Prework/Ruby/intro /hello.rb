puts "Hello, World"
puts "i"
puts "like"
puts "pie."


print " Cookies"
print " are" #what is going on
print " good"


#variables
my_variable = 10
my_other_variable = "ten"


operation_result = 12 * 34
puts "operation result is "
puts operation_result

#strings
a_string = "This is a string"


puts "hello\nworld"
puts 'Hello\nworld'

#string interpetation

name = "pete"
puts "Hi #{name}"

# Asking questions
puts "What is your name?"
name = gets.chomp
puts "Hello, #{name}"

puts "give me a digit"
first_number = gets.chomp.to_i
puts "give another numba"
second_number = gets.chomp.to_i
puts " #{first_number} x #{second_number} = #{first_number * second_number}"


#Reading and writing files

file_contents = IO.read("ruby.rb")
puts "the source file contains: #{file_contents}"

puts "What is your nizame?"
name = gets.chomp
IO.write('name.txt',name)


