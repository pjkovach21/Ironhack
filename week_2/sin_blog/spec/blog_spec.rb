require_relative("../lib/Blog.rb")
require_relative("../lib/Post.rb")


RSpec.describe Blog do
	
	before :each	do
		@blog = Blog.new
		@post1 = Post.new("title one", Time.new(2014,12,1), "This is the content")
		@blog.add_post(@post1)
		@post2 = Post.new("title e", Time.new(2015,12,1), "This is e content")
		@blog.add_post(@post2)
	end

	it "returns number of blogs in array" do
	expect(@blog.blog_space).to eq([@post1, @post2])
end

	it "returnds post in latest 1st" do
	expect(@blog.lastest_post).to eq([@post2, @post1])
end
end