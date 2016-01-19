require_relative("lib/task.rb")

task = Task.new("Buy the milk")
puts task.id
# 1
task2 = Task.new("Wash the car")
puts task2.id
# 2

task = Task.new("Buy the milk")
task.complete?

todo_list = TodoList.new
todo_list.add_task(Task.new("Walk the dog"))
todo_list.add_task(Task.new("Buy the milk"))
task = todo_list.find_task_by_id(1)
puts task.content