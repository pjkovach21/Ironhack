class Todo
    attr_reader :tasks
    def initialize
        @tasks = []
    end 
    def add_task(task)
    	@tasks.push(task)
    end
    def delete(task)
    	@tasks.delete(task)
    end
end