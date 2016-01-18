class Lexiconomitron
	def eat_t(string)
		@lexi = string.split(//)
		@lexi.delete("t")
		@lexi.delete("T")
		@lexi.join
	end

	def shazam(array)
	# @shazam = string.split("").reverse!

	array.map! do |word|
		word.reverse
	end	
	no_t = array.map do |x| 
		#x.gsub(/[tT]/,"")   another way to delete t
		eat_t(x)
	end
	final_arr = [no_t[0], no_t[-1]]
	end
end