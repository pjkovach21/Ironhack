class Post
	attr_accessor :title, :date, :text
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end
	def post_it 
		return " #{@title}\n **********\n #{@text} \n ---------------\n"
	end
end
