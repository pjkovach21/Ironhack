class Blog
	attr_accessor :post
	def initialize
		@post = []
	end
	def add_post(blog)
		@post.push(blog)
	end
	def lastest_post
	 @post.sort {| post1, post2| post2.date <=> post1.date}

	end
	def author()
		@author = [] 
end