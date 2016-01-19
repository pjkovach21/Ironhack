require_relative("../lib/todo.rb")

RSpec.describe Todo do 
	before:each do
		@todo = Todo.new 
		@task1 = "buy dog"
		end
		it "Adds task" do
			@todo.add_task(@task1)
		expect(@todo.tasks.size).to eq(1)
	end
		it "deletes tasks" do
		@todo.delete(@tasks1)
		expect(@todo.tasks.size).to eq(0)
	end
end


=begin
	describe "delete"
	it "deletes content by id" do
	expect(@task.delete(1)).to eq(false)
	end
=end