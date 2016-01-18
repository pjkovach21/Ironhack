class StringCalculation
	def add (numbers_string)
		num = numbers_string.split(",")
		int = 0
		num.each do |z|
			x = z.to_i 
			int += x
		end
		int
	end
end