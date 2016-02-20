class BarbequeapiController < ApplicationController

	def show
		barbecue = Barbecue.find_by(id: params[:id])
		unless barbecue
			render json: {error: "barbecue doesnt exist"},
			status: 404
			return
		end
		#include the api connector, always check spellings
		render json: barbecue
	end

	  def join_bbq
	  	@bbq = Barbecue.find_by(id: params[:id])

	  	current_user.barbecues.push(@bbq)

	  	render json: { success: "U in da house"},
	  	status: 200
	  end

end


