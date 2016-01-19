class Todo
    attr_reader :tasks
    def initialize
        @tasks = []
    end 
    def add_task(task)
    	@tasks.push(task)
    end
    def delete(task_id)
    	@tasks = @tasks.delete_if do |task|
    		task.id == task_id
    	end
    	@tasks
    end
    def find_id(task_id)
    	required_task = nil
    	@tasks.each do |task|
    		if task.id == task_id
    			required_task = task
    		end
    		required_task
    	end
    end
end