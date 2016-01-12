require_relative("lib/post.rb")
require_relative("lib/blog.rb")


blog = Blog.new
blog.add_post Post.new("Hey comes the sun", Time.new(2011,1,1), "This is a blog post!Every boidy put your hands up")
blog.add_post Post.new("The sun comes down", Time.new(2014,2,1), "Hey how are you, the sun is going down. What will happen to the blog")
blog.add_post Post.new("Here comes the night", Time.new(2014,3,1), "Here comes thenight is a great song by the one band with Wyn Butler. Arcade Fire is the name of the band")
blog.publish_front_page