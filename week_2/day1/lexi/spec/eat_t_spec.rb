require_relative("../lib/eat_t.rb")

RSpec.describe Lexiconomitron do 
	before:each do
		@lexi=Lexiconomitron.new
	end

		describe "eat_t" do
		it "removes every letter t from the input" do
			# @lexi = Lexiconomitron.new
			expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
		end
	
	end

	describe "Shazam" do
		it "returns reverse of first and last words without t" do
			expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
		end
	end

end
