require_relative("../lib/Blog.rb")
require_relative("../lib/Post.rb")


RSpec.describe Blog do
	
	before:each	do
		@blog = Blog.new
		@post1= Post.new("title one", Time.new(2014,12,1), "This is the content")
		@blog.add_post(@post1)
	end

	it "returns number of blogs in array" do
	expect(@blog.blog_space).to eq([@post1])
end
end
