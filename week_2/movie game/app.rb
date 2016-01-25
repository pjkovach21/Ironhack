require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

get "/" do
	erb(:home)
end

# post "/movie" do
# 	@movie = params[:search]
# 	redirect to("/imbd/#{@movie}")
# end

post "/movies" do
	@movie = params[:search]
	
	search = Imdb::Search.new(@movie)	

	@movies_with_pic = search.movies.take(25)

 	@movies_with_poster = @movies_with_pic.delete_if do |film|
		film.poster == nil
	end

	@results = @movies_with_poster[0..15]

	@win_movie = @results.sample

	@results_unique = @results.delete_if do |year|
			year.release_date == @win_movie.release_date
		end

	@final_results = @results_unique[0..7]	
	@final_results.insert(Random.new.rand(8), @win_movie)
	
	erb(:imdb_test)
end


post "/correctmovie" do
	"good job"
end

post "/wrongmovie" do
	"dsakjdbksaj"
end