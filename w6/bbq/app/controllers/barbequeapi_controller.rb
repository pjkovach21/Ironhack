class BarbequeapiController < ApplicationController

	def show
		barbecue = Barbecue.find_by(id: params[:id])
		unless barbecue
			render json: {error: "barbecue doesnt exist"},
			status: 404
			return
		end
		#include ingriedents, brings in ingriedents array
		render json: barbecue
	end

end
