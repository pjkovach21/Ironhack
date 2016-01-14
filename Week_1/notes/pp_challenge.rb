class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

 ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")


  array_of_languages = [ruby, python, javascript, go, rust, swift, java]


def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

array_printer(array_of_languages)

aged_languages = array_of_languages.map do |old|
	old.age += 1
	old
end
puts "The programming languages aged one year are: "
array_printer(aged_languages)
# Output
# The programming languages aged by one year are:
# Language: Ruby |  Age: 22 |  Type System: Dynamic
# Language: Python |  Age: 25 |  Type System: Dynamic
# Language: JavaScript |  Age: 21 |  Type System: Dynamic
# Language: Go |  Age: 7 |  Type System: Static
# Language: Rust |  Age: 6 |  Type System: Static
# Language: Swift |  Age: 3 |  Type System: Static
# Language: Java |  Age: 21 |  Type System: Static

sort_ages = aged_languages.sort_by {|x| x.age}
 array_printer(sort_ages)

# The programming languages sorted by age are:
# Language: Python |  Age: 25 |  Type System: Dynamic
# Language: Ruby |  Age: 22 |  Type System: Dynamic
# Language: JavaScript |  Age: 21 |  Type System: Dynamic
# Language: Java |  Age: 21 |  Type System: Static
# Language: Go |  Age: 7 |  Type System: Static
# Language: Rust |  Age: 6 |  Type System: Static
# Language: Swift |  Age: 3 |  Type System: Static

puts "Removing Java"
sort_ages.delete_at(4)
array_printer(sort_ages)

puts "Shuffle"
array_printer(sort_ages.shuffle)

puts "Include"
x = [1,2,3,4,5]
puts x.include?(8)

puts "Include"
# puts sort_ages.name.include?("Java")
languages_that_are_java = sort_ages.select { | language | language.name === "Java"}
puts languages_that_are_java.empty?

language_length = sort_ages.select { | x | x.name.length == 4}
puts language_length.empty?
array_printer(language_length) 

arr1 = ["animals", "books","fire"]
arr2 = ["beer", "water", "hsir"]
arr3 = ["computer", "notes", "life" ]

c = [arr1, arr2, arr3]
p c[1] == arr2
p c[1][0] == "beer"
print c.transpose
puts "space"
print (arr1).zip(arr2, arr3)