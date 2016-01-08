def say_hello
	puts "hello"
end

say_hello


#Arguments
def say_hello(name)
	puts "hello, #{name}"
end
say_hello("Rafa")


## this is an expression 
puts say_hello("James" + "Bond")

def add (a, b)
	puts a + b
end

add((5 * 5), (3))

#using flow control
def taste(food)
	if food == "bacon"
		puts "Yum, Bacon"
	elsif food == "pizza"
		puts "pizza"
	else puts "yuck"
			
	end
end

taste("pizza")
taste("bacon")
taste("bread")

##return examples
def add(a, b)
  return a + a
  return a + b
  return b + b
end

puts add(1,  3)
 

 def add(a, b)
  calc1 = a + a
  calc2 = a + b
  calc3 = b + b
  return calc1, calc2, calc3
end

puts add(2, 4)
 

def square(num)
  sqr_num = num * num
  if sqr_num > 100
    return “Number too big!!”
  end
  sqr_num
end



