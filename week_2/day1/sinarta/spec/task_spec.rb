require_relative("../lib/task.rb")

RSpec.describe Task do 
	before:each do
		@task = Task.new("buty msd")
		end
	describe "completed"
	it "Returns False cause not completed" do

	expect(@task.completed).to eq(false)
	end
	describe "complete!"
	it "Returns True, because completed" do
	expect(@task.complete!).to eq(true)
	end
	describe "make_incomplete"
	it "changes back to false" do
	expect(@task.make_incomplete).to eq(false)
	end
	describe "change_content"
	it "changes content" do
	expect(@task.update_content("hey i changed")).to eq("hey i changed")
	end

end

