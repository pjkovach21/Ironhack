require_relative("lib/post.rb")
require_relative("lib/blog.rb")
require("colorize")


blog = Blog.new
blog.add_post Post.new("Hey comes the sun", Time.new(2011,1,1), "This is a blog post!Every boidy put your hands up" , "Yes")
blog.add_post Post.new("The sun comes down", Time.new(2014,2,1), "Hey how are you, the sun is going down. What will happen to the blog" , "No")
blog.add_post Post.new("Here comes the night", Time.new(2014,3,1), "Here comes thenight is a great song by the one band with Wyn Butler. Arcade Fire is the name of the band", "Yes")
blog.add_post Post.new("Hey comes the sun", Time.new(2011,1,1), "This is a blog post!Every boidy put your hands up" , "Yes")
blog.add_post Post.new("The sun comes down", Time.new(2014,2,1), "Hey how are you, the sun is going down. What will happen to the blog" , "No")
blog.add_post Post.new("Here comes the night", Time.new(2014,3,1), "Here comes thenight is a great song by the one band with Wyn Butler. Arcade Fire is the name of the band", "Yes")
blog.add_post Post.new("Hey comes the sun", Time.new(2011,1,1), "This is a blog post!Every boidy put your hands up" , "Yes")
blog.add_post Post.new("The sun comes down", Time.new(2014,2,1), "Hey how are you, the sun is going down. What will happen to the blog" , "No")
blog.add_post Post.new("Here comes the night", Time.new(2014,3,1), "Here comes thenight is a great song by the one band with Wyn Butler. Arcade Fire is the name of the band", "Yes")
blog.publish_front_page

puts "This is blue".colorize(:blue)
puts "This is light blue".colorize(:light_blue)
puts "This is also blue".colorize(:color => :blue)
puts "This is light blue with red background".colorize(:color => :light_blue, :background => :red)
puts "This is light blue with red background".colorize(:light_blue ).colorize( :background => :red)
puts "This is blue text on red".blue.on_red
puts "This is red on blue".colorize(:red).on_blue
puts "This is red on blue and underline".colorize(:red).on_blue.underline
puts "This is blue text on red".blue.on_red.blink
puts "This is uncolorized".blue.on_red.uncolorize