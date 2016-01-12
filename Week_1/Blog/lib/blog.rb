require_relative("post.rb")

class Blog 
	def initialize ()
		@blog_space = []
	end
	def add_post (blog)
		@blog_space.push(blog)
	end
	def publish_front_page
		sorted_posts = @blog_space.sort do |post_1, post_2|
			post_1.date <=> post_2.date
		end
		puts "here is the new blog"
			sorted_posts.each do |blog|
				if blog.sponsered == "Yes"
				puts "*******#{blog.title}********\n **********\n #{blog.text} \n ---------------\n.colorize(:aqua)"
			else 
			puts "#{blog.title}\n **********\n #{blog.text} \n ---------------\n.colorize(:aqua)"	
		end
	end
end
end