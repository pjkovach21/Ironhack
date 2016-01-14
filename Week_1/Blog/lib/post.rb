class Post
	attr_accessor :title, :date, :text, :sponsered
	def initialize(title, date, text, sponsered)
		@title = title
		@date = date
		@text = text
		@sponsered = sponsered
	end
end


