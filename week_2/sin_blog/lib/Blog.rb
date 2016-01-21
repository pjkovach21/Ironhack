class Blog
	attr_accessor :blog_space
	def initialize
		@blog_space = []
	end
	def add_post(blog)
		@blog_space.push(blog)
	end
end