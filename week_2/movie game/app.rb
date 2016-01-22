require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

get "/" do
	erb(:home)
end

post "/movie" do
	@movie = params[:search]
	redirect to("/imbd/#{@movie}")
end

get "/imbd/:movie" do
	
	search = Imdb::Search.new(params[:movie])	

	@number_of_results = search.movies.length
	@results = search.movies[0..8]

	erb(:imdb_test)
end