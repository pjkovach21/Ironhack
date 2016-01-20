require "sinatra"
require "sinatra/reloader" if development?
enable :sessions

users = {
	"pete" => "123",
	"tea" => "456",
	"ace" => "321"
}

get "/" do

	erb(:home)
end

post "/logout" do
	session[:correct_stuff] = nil
		redirect to("/")
	end

post "/validate" do
	username = params[:username]
	password = params[:password]
	credentials = {username => password}
	if credentials[username] == users[username]
	session[:correct_stuff] = username
	redirect to("/pete")
else
	redirect to("/invalid")
	end
end


get "/pete" do
	if session[:correct_stuff] == nil
		redirect to("/")
	else
	erb(:welcome)
	end
end

get("/invalid") do
" Wrong password or username"
end

