class SandwhichesController < ApplicationController
	def index
		sandwhiches = Sandwhich.all
		render json: sandwhiches
	end

	def create
		sandwhich = Sandwhich.create(sandwhich_params)
		render json: sandwhich
	end	

	def show
		sandwhich = Sandwhich.find_by(id: params[:id])
		unless sandwhich
			render json: {error: "sandwhich not found"},
			status: 404
			return
		end
		render json: sandwhich
	end

	def update
		sandwhich = Sandwhich.find_by(id: params[:id])
		unless sandwhich
			render json: {error: "sandwhich not found"},
			status: 404
			return
		end
			sandwhich.update(sandwhich_params)
			render json: sandwhich
	end

	def destroy
		sandwhich = Sandwhich.find_by(id: params[:id])
		unless sandwhich
			render json: {error: "sandwhich not here"},
			status: 404
			return
		end
		sandwhich.destroy
		render json: sandwhich
	end

	private
	def sandwhich_params
			params.require(:sandwhich)
				.permit(:name, :bread_type)
	end
end
