require_relative("lib/Blog.rb")
require_relative("lib/Post.rb")


require "sinatra"
require "sinatra/reloader" if development?

blog = Blog.new
blog.add_post Post.new("Pete 1" , Time.new(2014,12,1), "content")
blog.add_post Post.new("title 2" , Time.new(2012,12,1), "coent")
blog.add_post Post.new("ti 3" , Time.new(2013,12,1), "tent")


get "/" do
	@post = blog.lastest_post 
	erb(:home)
end

get "/post_details/:id" do
	index = params[:id].to_i
	@post = blog.lastest_post[index]

	erb(:post)
end

post "/" do
	redirect to("/write")
end

get "/write" do
erb(:write)
end
#can i get time from just clicking submit

post "/writepost" do
	@post1 = Post.new(params[:title],Time.now,params[:content])
	blog.add_post(@post1)
	redirect to "/"
end