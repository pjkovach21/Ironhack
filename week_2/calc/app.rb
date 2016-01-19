require "sinatra"

get "/add" do
  erb(:add)
end

post '/calculate_add' do
	#why dos this turn into a hash?
	#Remember, your input's name is going to be the key of that input inside the params hash.
   #"Params data: " + params.inspect
   first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first + second
  "#{first} + #{second} = #{result}"
end