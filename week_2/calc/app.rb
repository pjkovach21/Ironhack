require "sinatra"

get "/home" do
	erb(:home)
end

get "/add" do
  erb(:add)
end

post '/calculate_add' do

   first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first + second
  "#{first} + #{second} = #{result}"
end

post '/calculate_subtract' do

   first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first - second
  "#{first} - #{second} = #{result}"
end

post '/calculate_multi' do

   first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first * second
  "#{first} * #{second} = #{result}"
end

post '/calculate_div' do

   first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first / second
  "#{first} / #{second} = #{result}"
end

# calc_add
	#why dos this turn into a hash?
	#Remember, your input's name is going to be the key of that input inside the params hash.
   #"Params data: " + params.inspect


#post "/charge_money" do  
#redirect to("/payment_success")
#end