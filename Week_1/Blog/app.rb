require_relative("lib/post.rb")
require_relative("lib/blog.rb")
require("colorize")


blog = Blog.new
blog.add_post Post.new("A comes the sun", Time.new(2011,1,1), "This is a blog post!Every boidy put your hands up" , "Yes")
blog.add_post Post.new("The sun comes down", Time.new(2014,2,1), "Hey how are you, the sun is going down. What will happen to the blog" , "No")
blog.add_post Post.new("Here comes the night", Time.new(2014,3,1), "Here comes thenight is a great song by the one band with Wyn Butler. Arcade Fire is the name of the band", "Yes")
blog.add_post Post.new("yo", Time.new(2011,1,1), "This is a" , "Yes")
blog.add_post Post.new("The sun comes down", Time.new(2014,2,1), "He going down. What will happen to the blog" , "No")
blog.add_post Post.new("Here comes the night", Time.new(2014,3,1), "H a gre» one band with Wyn Butler. Arcade Fire is the name of the band", "Yes")
blog.add_post Post.new("Hey comes the sun", Time.new(2011,1,1), "This is a b your hands up" , "Yes")
blog.add_post Post.new("The sun comes down", Time.new(2014,2,1), "Hey how ar sun is going down. What will happen to the blog" , "No")
blog.add_post Post.new("Here comes the night", Time.new(2014,3,1), "Here com by the one band with Wyn Butler. Arcade Fire is the name of the band", "Yes")
blog.publish_front_page


#bonus round with pages

#accept user input
#blog pages
#% remainder thing
#cieling to get last page
#next page and previos page - in method using indexies