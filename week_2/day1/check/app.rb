require_relative("lib/StringCalc.rb")

my_calc = StringCalculation.new

p my_calc.add("1,2") == 3
p my_calc.add("2,3") == 5
p my_calc.add("0") == 0
p my_calc.add("8,2") == 10
p my_calc.add("10") == 10


