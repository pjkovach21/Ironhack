require_relative("../lib/todo.rb")
require_relative("../lib/task.rb")

RSpec.describe Todo do 
	before:each do
		@todo = Todo.new 
		@task1 = Task.new("buy dog")
		end
		it "Adds task" do
			@todo.add_task(@task1)
		expect(@todo.tasks.size).to eq(1)
	end
		it "deletes tasks" do
		@todo.add_task(@task1)
		@todo.delete(@task1.id)
		expect(@todo.tasks.size).to eq(0)
	end
end


=begin
	describe "delete"
	it "deletes content by id" do
	expect(@task.delete(1)).to eq(false)
	end
=end