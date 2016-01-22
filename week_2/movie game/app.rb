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
	@movies_with_pic = search.movies[0..25]
 	@movies_with_pic.delete_if do |film|
		film.poster == nil
	end
	@results = @movies_with_pic[0..8]

	erb(:imdb_test)
end