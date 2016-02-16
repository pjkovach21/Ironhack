class TournamentsController < ApplicationController
	def index
  		render :index
  	end

  	def apiIndex
  		tournaments = Tournament.all
  		render json: tournaments
  	end

	def create
  		tournament = Tournament.create(tourny_params)
		render json: tournament, status: 201
 	end	

 	# def destroy
 	# 	tournament = Tournament.find_by(id: params[:id])
 	# 	unless tournament
 	# 		render json: {error: "Tourny does not already exisit"}, status: 404
 	# 		return
 	# 	end
 	# 	tournament.destroy
 	# 	render json: tournament
 	# end

 	private
 	def tourny_params
 		params.require(:tournament)
 			.permit(:name)
 	end	
end

