puts "user name"
username = gets.chomp

puts "Password"
password = gets.chomp

correct_username = "pete"
correct_password = "life"

if username != correct_username && password != correct_password
	puts "wrong username or password, please try agains"
else
	puts "welcome back #{username}"
	puts "please enter text to count words"
	text =  gets.chomp

	puts "the text has 6 words"
end