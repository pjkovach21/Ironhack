require "sinatra"
require "artii"

get "/" do
	"My first sinatra app"
end

get "/about" do
	"My name is Peter Kovach, I was born Batman, but decided to give that life up so Faraz Patankar could be Batman... I guess those are things Superman does"
end 

get "/author" do
	erb(:author)
end

get "/pete" do
	@greeting = "hellp world"
	erb(:petespage)
end

get "/time" do
	@current_time = Time.new
	@current_time = @current_time.strftime("%c")
	erb(:time)
end


get "/users/:username" do
	@username = params[:username]
	@city = params[:city]

	erb(:username)
end

get "/dynotime/:time" do

	@time1 = params[:time]
	@hours = 60 * 60
	@finaltime =Time.now - (@time1.to_i * @hours)
	erb(:twotimes)
end

get "/arts/:art/?:font" do
	@art = params[:art]
	@font = params[:font]
	@a = Artii::Base.new :font => @font
	@text = @a.asciify(@art)
	erb(:arti)
end

