
require_relative("../lib/StringCalc.rb")

RSpec.describe StringCalculation do 
	it "returns 0 for empty string" do
	my_calc = StringCalculation.new

	expect(my_calc.add( "" )).to eq(0)


	end
	it "returns 9 for 9 string" do
	my_calc = StringCalculation.new

	expect(my_calc.add( "9" )).to eq(9)
end
	it "returns 2 for of 1,1 string" do
	my_calc = StringCalculation.new

	expect(my_calc.add( "1 , 1" )).to eq(2)
end
end