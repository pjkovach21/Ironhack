source "https://rubygems.org"

gem "sinatra"
gem "sinatra-contrib"

blog = Blog.new
blog.add_post Post.new("title1" , Time.new, "content")
blog.add_post Post.new("title2" , Time.new, "content")
blog.add_post Post.new("title2" , Time.new, "content")
