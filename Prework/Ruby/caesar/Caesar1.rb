def solve_cipher(input, c)
	x = input.split("")
	y = x
	y.each do |a|
		a = a.ord
		if a != 32
			a = a + c	
		end
		if a <= 95 && a != 32
			a = a + 26
		end
		a = a.chr
		print a 
	end
end

solve_cipher("pb uhdo qdph lv grqdog gxfn", -3)
#should return my name is donald duck
