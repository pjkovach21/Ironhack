def solve_cipher(input)
	x = input.split("")
	y = x
	y.each do |a|
		a = a.ord - 1
		a = a.chr
		print a 
	end
end

solve_cipher("ifmmp")
#should return hello
