class Person
	attr_reader :name
	attr_accessor :age
	def initialize(name, age)
		@name = name
		@age = age
	end
end

pete = Person.new("Pete", 22)
millie = Person.new("Millie", 99)


pete.age = 23
puts pete.name
puts pete.age